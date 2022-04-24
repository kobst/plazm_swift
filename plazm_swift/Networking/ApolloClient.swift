//
//  ApolloClient.swift
//  plazm_swift
//
//  Created by Edward Han on 4/23/22.
//


import Foundation
import Apollo

class Network {
  static let shared = Network()

  private(set) lazy var apollo = ApolloClient(url: URL(string: "https://ibizrkw4g1.execute-api.us-east-1.amazonaws.com/dev")!)
}
