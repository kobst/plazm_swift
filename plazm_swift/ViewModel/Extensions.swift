//
//  Extensions.swift
//  plazm_swift
//
//  Created by Edward Han on 4/25/22.
//

import Foundation

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

extension GetMyFeedDataQuery.Data.GetMyFeedDatum.Datum: Identifiable {
    public var id: String {
        return _id!
    }
}

extension GetListDetailsQuery.Data.GetListDetail.Datum: Equatable {
        public static func == (lhs: GetListDetailsQuery.Data.GetListDetail.Datum, rhs: GetListDetailsQuery.Data.GetListDetail.Datum) -> Bool {
            return lhs._id == rhs._id
        }
}

extension GetListDetailsQuery.Data.GetListDetail.Datum: Hashable {
    public func hash(into hasher: inout Hasher){
        hasher.combine(_id)
    }
}

extension GetListDetailsQuery.Data.GetListDetail.Datum: Identifiable {
    public var id: String {
        return _id!
    }
}


extension HomeSearchQuery.Data.HomeSearch.Datum: Equatable {
        public static func == (lhs: HomeSearchQuery.Data.HomeSearch.Datum, rhs: HomeSearchQuery.Data.HomeSearch.Datum) -> Bool {
            return lhs._id == rhs._id
        }
}

extension HomeSearchQuery.Data.HomeSearch.Datum: Hashable {
    public func hash(into hasher: inout Hasher){
        hasher.combine(_id)
    }
}

extension HomeSearchQuery.Data.HomeSearch.Datum: Identifiable {
    public var id: String {
        return _id!
    }
}

extension GetUserCreatedAndFollowedListsQuery.Data.GetUserCreatedAndFollowedList.List: Equatable {
        public static func == (lhs: GetUserCreatedAndFollowedListsQuery.Data.GetUserCreatedAndFollowedList.List, rhs: GetUserCreatedAndFollowedListsQuery.Data.GetUserCreatedAndFollowedList.List) -> Bool {
            return lhs._id == rhs._id
        }
}

extension GetUserCreatedAndFollowedListsQuery.Data.GetUserCreatedAndFollowedList.List: Hashable {
    public func hash(into hasher: inout Hasher){
        hasher.combine(_id)
    }
}

extension GetUserCreatedAndFollowedListsQuery.Data.GetUserCreatedAndFollowedList.List: Identifiable {
    public var id: String {
        return _id!
    }
}


extension SearchPlacesByUserIdQuery.Data.SearchPlacesByUserId.Post: Equatable {
        public static func == (lhs: SearchPlacesByUserIdQuery.Data.SearchPlacesByUserId.Post, rhs: SearchPlacesByUserIdQuery.Data.SearchPlacesByUserId.Post) -> Bool {
            return lhs.postId == rhs.postId
        }
}
//
extension SearchPlacesByUserIdQuery.Data.SearchPlacesByUserId.Post: Hashable {
    public func hash(into hasher: inout Hasher){
        hasher.combine(postId)
    }
}
//
extension SearchPlacesByUserIdQuery.Data.SearchPlacesByUserId.Post: Identifiable {
    public var id: String {
        return postId!
    }
}
