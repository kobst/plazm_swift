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

