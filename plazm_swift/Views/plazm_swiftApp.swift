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
    
    @ObservedObject var sessionManager = SessionManager()
    
    init(){
        configureAmplify()
        sessionManager.getCurrentAuthUser()
        
    }
    
    var body: some Scene {
        WindowGroup {
            MasterView()
                  .environmentObject(sessionManager)

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
