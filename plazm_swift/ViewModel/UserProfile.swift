//
//  UserProfile.swift
//  plazm_swift
//
//  Created by Edward Han on 4/24/22.
//

import SwiftUI
import Apollo
import Foundation


//extension AllPersonsQuery.Data.AllPerson.Edge.Node: Equatable {
//    public static func == (lhs: AllPersonsQuery.Data.AllPerson.Edge.Node, rhs: AllPersonsQuery.Data.AllPerson.Edge.Node) -> Bool {
//        return lhs.id == rhs.id
//    }
//}
//extension AllPersonsQuery.Data.AllPerson.Edge.Node: Hashable {
//    public func hash(into hasher: inout Hasher) {
//        hasher.combine(id)
//    }
//}
//extension AllPersonsQuery.Data.AllPerson.Edge.Node: Identifiable { }


extension GetMyFeedDataQuery.Data.GetMyFeedDatum.Datum: Equatable {
        public static func == (lhs: GetMyFeedDataQuery.Data.GetMyFeedDatum.Datum, rhs: GetMyFeedDataQuery.Data.GetMyFeedDatum.Datum) -> Bool {
            return lhs._id == rhs._id
        }
}

extension GetMyFeedDataQuery.Data.GetMyFeedDatum.Datum: Hashable {
    public func hash(into hasher: inout Hasher){
        hasher.combine(_id)
    }
}

//extension GetMyFeedDataQuery.Data.GetMyFeedDatum.Datum: Identifiable {
//    public var id: ObjectIdentifier {
//        return _id
//    }
//}


class UserProfile: ObservableObject {
    
    var user_sub: String? = ""
    

    @Published var _user: GetUserQuery.Data.GetUser.User? = nil
    @Published var user_id: String? = ""
    @Published var email: String? = ""
    @Published var followedLists: [String] = []
    @Published var homeFeed: [GetMyFeedDataQuery.Data.GetMyFeedDatum.Datum] = []
    @Published var location: Coordinates = Coordinates(lat: 40.7505335, lng: -73.9759307)
    
    
    func getUser(auth_user_sub: GraphQLID) {
        user_sub = auth_user_sub
        Network.shared.apollo.fetch(query: GetUserQuery(userSub: auth_user_sub, value: 0, limit: 15)) { result in
            switch result {
                    case .success(let graphQLResult):
                        print("Success get user! Result: ")
                
                if let _validUser = graphQLResult.data?.getUser.user, let _validId = _validUser._id {
                    self._user = _validUser
                    self.getHomeFeed(user_id: _validId)
                }
                    case .failure(let error):
                        print("Failure! Error: \(error)")
//                        self.homeFeed = []
                    }
                }
        
    }
    
    func getHomeFeed(user_id: GraphQLID){
        let filter = homeSearchFilterInput(closest: true, updated: false)
        print(user_id)
        Network.shared.apollo.fetch(query: GetMyFeedDataQuery(id: user_id, value: 20, filters: filter, longitude: location.lng, latitude: location.lat, search: "")) {result in
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
    


}
