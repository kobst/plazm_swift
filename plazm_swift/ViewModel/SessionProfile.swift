//
//  UserProfile.swift
//  plazm_swift
//
//  Created by Edward Han on 4/24/22.
//

import SwiftUI
import Apollo
import Foundation


class SessionProfile: ObservableObject {
    
    var user_sub: String? = ""
    

    @Published var _filter = homeSearchFilterInput(closest: true, updated: false)
    @Published var _user: GetUserQuery.Data.GetUser.User? = nil
    @Published var followedLists: [GraphQLID?] = []
    @Published var createdLists: [GraphQLID?] = []
    @Published var homeFeed: [GetMyFeedDataQuery.Data.GetMyFeedDatum.Datum] = []
    @Published var exploreFeed: [HomeSearchQuery.Data.HomeSearch.Datum] = []
    @Published var location: Coordinates = Coordinates(lat: 40.7505335, lng: -73.9759307)
    @Published var searchTerms: String = ""
    
    
    func getUser(auth_user_sub: GraphQLID) {
        user_sub = auth_user_sub
        Network.shared.apollo.fetch(query: GetUserQuery(userSub: auth_user_sub, value: 0, limit: 15)) { result in
            switch result {
                    case .success(let graphQLResult):
                        print("Success get user! Result: ")
                
                if let _validUser = graphQLResult.data?.getUser.user, let _validId = _validUser._id {
                    self._user = _validUser
                    self.followedLists = _validUser.listFollowed ?? []
                    self.getHomeFeed(user_id: _validId)
//                    self.getUserLists()
                }
                    case .failure(let error):
                        print("Failure! Error: \(error)")
                    }
                }
        
    }
    
    func getHomeFeed(user_id: GraphQLID){
   
        Network.shared.apollo.fetch(query: GetMyFeedDataQuery(id: user_id, value: 20, filters: _filter, longitude: location.lng, latitude: location.lat, search: searchTerms)) {result in
            switch result {
                    case .success(let graphQLResult):
                        print("Success! Result: HomeFeed")
                if let items = graphQLResult.data?.getMyFeedData.data?.compactMap({$0}){
                    self.homeFeed = items
                }
                    case .failure(let error):
                        print("Failure! Error: \(error)")
//                        self.homeFeed = []
                    }
                }
    }
    
    func explore(){
        Network.shared.apollo.fetch(query: HomeSearchQuery(search: searchTerms, value: 20, filters: _filter, longitude: location.lng, latitude: location.lat)) {result in
            switch result {
            case .success(let graphQLResult):
                print("Success! Result: HomeFeed")
                if let items = graphQLResult.data?.homeSearch.data?.compactMap({$0}){
                    print(items)
                }
            case .failure(let error):
                print("Failure! Error: \(error)")
            }
        }
        
    }
    


}
