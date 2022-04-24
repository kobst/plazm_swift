//
//  plazm_swiftApp.swift
//  plazm_swift
//
//  Created by Edward Han on 4/23/22.
//

import SwiftUI
import Amplify
import AmplifyPlugins

@main
struct plazm_swiftApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    init(){
        configureAmplify()
//        authSessionManager.getCurrentAuthUser()
    
        Network.shared.apollo.fetch(query: GetListsQuery()) { result in
          switch result {
          case .success(let graphQLResult):
            print("Success! Result: \(graphQLResult)")
          case .failure(let error):
            print("Failure! Error: \(error)")
          }
        }
        

    }
    
    // Configure Amplify at start of the app
        private func configureAmplify() {
        do {
            // Amplify.Logging.logLevel = .verbose
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.configure()
            print("Amplify configured with auth plugin")

        } catch {
            print("Failed to initialize Amplify with \(error)")
        }
    }
}
