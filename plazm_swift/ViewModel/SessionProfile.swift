//
//  UserProfile.swift
//  plazm_swift
//
//  Created by Edward Han on 4/24/22.
//

import SwiftUI
import Apollo
import Foundation

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
    @Published var location: Coordinates = Coordinates(lat: 40.7505335, lng: -73.9759307)
    @Published var searchTerms: String = ""
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
   
        Network.shared.apollo.fetch(query: GetMyFeedDataQuery(id: user_id, value: homeFeedOffset, filters: _filter, longitude: location.lng, latitude: location.lat, search: searchTerms)) {result in
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
        Network.shared.apollo.fetch(query: HomeSearchQuery(search: searchTerms, value: exploreFeedOffset, filters: _filter, longitude: location.lng, latitude: location.lat)) {result in
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
    


}
