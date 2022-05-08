//
//  UserProfile.swift
//  plazm_swift
//
//  Created by Edward Han on 4/24/22.
//

import SwiftUI
import Apollo
import Foundation
import Turf
import CoreLocation

struct Coordinates {
var lat: Double
var lng: Double
}



enum FeedState: String {
    case homeFeed="home"
    case explore="explore"
    case listDetail="list detail"
    case listExplore="subscriptions"
}

class SessionProfile: ObservableObject {
    
    var user_sub: String? = ""
    var homeFeedOffset: Int = 0
    var listDetailOffset: Int = 0
    var exploreFeedOffset: Int = 0
    @State var workItem: DispatchWorkItem?
    @State var publishLocations: Bool = false

    @Published var feedState: FeedState = .homeFeed 
    @Published var test = "TEST"
    @Published var _filter = homeSearchFilterInput(closest: true, updated: false)
    @Published var _user: GetUserQuery.Data.GetUser.User? = nil
    @Published var email: String = ""
    @Published var followedLists: [GraphQLID?] = []
    @Published var createdLists: [GraphQLID?] = []
    @Published var homeFeed: [GetMyFeedDataQuery.Data.GetMyFeedDatum.Datum] = []
    @Published var exploreFeed: [HomeSearchQuery.Data.HomeSearch.Datum] = []
    @Published var detailFeed: [GetListDetailsQuery.Data.GetListDetail.Datum] = []
    @Published var userLists: [GetUserCreatedAndFollowedListsQuery.Data.GetUserCreatedAndFollowedList.List] = []
    @Published var selectedPlace: SearchPlacesByUserIdQuery.Data.SearchPlacesByUserId.Place? = nil
    @Published var selectedPlacePosts: [SearchPlacesByUserIdQuery.Data.SearchPlacesByUserId.Post] = []
    @Published var userLocation: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 40.7505335, longitude: -73.9759307)
    @Published var locations: [CLLocationCoordinate2D] = []
    @Published var locationIdPairs: [(id: String, coord: CLLocationCoordinate2D)] = []
    @Published var locationIdRemove: [String] = []
    @Published var addLocation: (id: String, coord: CLLocationCoordinate2D)? = nil
    @Published var removeLocation: String? = nil
    @Published var tempLocationIdPairs: [(id: String, coord: CLLocationCoordinate2D)] = []
    @Published var searchTerms: String = ""
    @Published var refreshLocations: Bool = false
//    @Published var currentView: View? = nil
    
    
    func getUser(auth_user_sub: GraphQLID) {
        user_sub = auth_user_sub
        print("Getting User" + auth_user_sub)
        Network.shared.apollo.fetch(query: GetUserQuery(userSub: auth_user_sub, value: 0, limit: 15)) { result in
            switch result {
                    case .success(let graphQLResult):
                        print("Success get user! Result: ")
                
                if let _validUser = graphQLResult.data?.getUser.user, let _validId = _validUser._id {
                    DispatchQueue.main.async {
                        print(_validUser.email ?? "no email")// << here !!
                        self._user = _validUser
                        self.email = _validUser.email ?? ""
                        self.followedLists = _validUser.listFollowed ?? []
                    }

                    self.getHomeFeed(user_id: _validId)
                    self.getLists(user_id: _validId)
                    
//                    self.getUserLists()
                }
                    case .failure(let error):
                        print("Failure! Error: \(error)")
                    }
                }
        
    }
    
    func getHomeFeed(user_id: GraphQLID){
   
        Network.shared.apollo.fetch(query: GetMyFeedDataQuery(id: user_id, value: homeFeedOffset, filters: _filter, longitude: userLocation.longitude, latitude: userLocation.latitude, search: searchTerms)) {result in
            switch result {
                    case .success(let graphQLResult):
                        print("Success! Result: HomeFeed")
                        if let items = graphQLResult.data?.getMyFeedData.data?.compactMap({$0}){
                            DispatchQueue.main.async {self.homeFeed = items}
                        }
                        self.homeFeedOffset = self.homeFeedOffset + 20
                    case .failure(let error):
                        print("Failure! Error: \(error)")
//                        self.homeFeed = []
                    }
                }
    }
    
    func getLists(user_id: GraphQLID) {
        print("getting lists")
        Network.shared.apollo.fetch(query: GetUserCreatedAndFollowedListsQuery(id: user_id, value: 1, limit: 15)) {result in
            switch result {
                case .success(let graphQLResult):
                    print("Success: Lists")
                if let _lists = graphQLResult.data?.getUserCreatedAndFollowedLists.list?.compactMap({$0}) {
                    self.userLists = _lists
//                    for item in _lists {
//                        print(item.media?[0]?.image ?? "no image")
//                    }
                }
                case .failure(let error):
                    print(error)
            }
        }
        
    }
    
    func explore(){
        Network.shared.apollo.fetch(query: HomeSearchQuery(search: searchTerms, value: exploreFeedOffset, filters: _filter, longitude: userLocation.longitude, latitude: userLocation.latitude)) {result in
            switch result {
            case .success(let graphQLResult):
                print("Success! Result: Explore")
                if let items = graphQLResult.data?.homeSearch.data?.compactMap({$0}){
                    DispatchQueue.main.async {self.exploreFeed = items}
                }
            case .failure(let error):
                print("Failure! Error: \(error)")
            }
        }
        
    }
    
    func getListDetails(listId: GraphQLID, fromMenu: Bool){
        print("getting list details" + listId)
        
        if fromMenu {feedState = .listDetail}
        
        Network.shared.apollo.fetch(query: GetListDetailsQuery(id: listId, value: listDetailOffset)) {result in
                switch result {
                case .success(let graphQLResult):
                    print("Success! Result: List Detail")
                    if let items = graphQLResult.data?.getListDetails.data?.compactMap({$0}){
                        self.detailFeed = items
                    }
                    self.getFeedLocations()

                    
                case .failure(let error):
                    print("Failure! Error: \(error)")
                    self.detailFeed = []
                }
            
        }
    }
    
 
    func getPlaceDetails(place_id: GraphQLID){
        let _filters = filterInput(business: false, postsByMe: true, mySubscriptions: true, others: true)
        let sideFilter = sideFilterInput(likes: false, recent: true)
        
        Network.shared.apollo.fetch(query: SearchPlacesByUserIdQuery(id: place_id, value: 0, filters: _filters, ownerId: _user?._id, sideFilters: sideFilter, search: "")){result in
            switch result {
            case .success(let graphQLResult):
                print("Success! Result: Place Received")
                if let _place = graphQLResult.data?.searchPlacesByUserId.place?[0] {
                    self.selectedPlace = _place
                }
                if let _posts = graphQLResult.data?.searchPlacesByUserId.posts?.compactMap({$0}) {
                    self.selectedPlacePosts = _posts
//                    for post in _posts {
//                        print(post.postI)
//                    }
                }
                
            case .failure(let error):
                print("Failure! Error: \(error)")
            }
        
    }
        
    }
    
    

    
    func addToMap(lat: Double?, lng: Double?, id: String?) {
        if let _lat = lat, let _lng = lng, let _id = id  {
            let coordinates = CLLocationCoordinate2D(latitude: _lat, longitude: _lng)
            let element = (id: _id, coord: coordinates)
            locationIdPairs.append(element)
            addLocation = element
        }
    }
    
    
    func removeFromMap(_id: String?){

        if let id = _id {
            locationIdPairs.removeAll(where: {$0.id == id})
            removeLocation = id
            locationIdRemove.append(id)
        }
        

    }
    
    func toPublishedLocations(){

        print("published locations + \(publishLocations)")
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                print("goooooo")
                self.locationIdPairs = self.tempLocationIdPairs
        }
//        workItem?.cancel()
//        workItem = DispatchWorkItem {
//            print("work item")
//            self.locationIdPairs = self.tempLocationIdPairs
//        }
//        if let work = workItem {
//            print("work item")
//            DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: work)
//        }
    }
    
    
    func getFeedLocations(){
        // call this on every api call?
        print("get feed locations")
        var array: [CLLocationCoordinate2D] = []
        switch feedState {
        case .homeFeed:
            for post in homeFeed {
                if let lng = post.businessLocation?.coordinates?[0], let lat = post.businessLocation?.coordinates?[1] {
                    array.append(CLLocationCoordinate2D(latitude: lat, longitude: lng))
                }
            }
        case .explore:
            for post in exploreFeed {
                if let lng = post.location?.coordinates?[0], let lat = post.location?.coordinates?[1] {
                    array.append(CLLocationCoordinate2D(latitude: lat, longitude: lng))
                }
            }
        case .listDetail:
            for post in detailFeed {
                if let lng = post.businessLocation?.coordinates?[0], let lat =  post.businessLocation?.coordinates?[1] {
                    array.append(CLLocationCoordinate2D(latitude: lat, longitude: lng))
                }
            }
        case .listExplore:
            print("list explore")
        }
        print(array.count)
        locations = array
        refreshLocations = true
        
    }


}
