//
//  plazm_swiftApp.swift
//  plazm_swift
//
//  Created by Edward Han on 4/23/22.
//

import SwiftUI

@main
struct plazm_swiftApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    init(){
        Network.shared.apollo.fetch(query: GetListsQuery()) { result in
          switch result {
          case .success(let graphQLResult):
            print("Success! Result: \(graphQLResult)")
          case .failure(let error):
            print("Failure! Error: \(error)")
          }
        }
    }
}
