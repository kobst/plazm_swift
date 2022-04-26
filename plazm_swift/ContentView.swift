//
//  ContentView.swift
//  plazm_swift
//
//  Created by Edward Han on 4/23/22.
//

import SwiftUI
import Amplify
import Apollo



struct ContentView: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    @StateObject var sessionProfile = SessionProfile()
    
    
    var body: some View {
        Text("Hello, world!")
            .padding()
            .onAppear(){
                if let user_sub = sessionManager.authUserId {
                    self.sessionProfile.getUser(auth_user_sub: user_sub)
                }
                self.sessionProfile.explore()
            }
        
        if let userSpecs = sessionProfile._user {
            Text(userSpecs.email ?? "no email").padding()

        }
    
        ForEach(sessionProfile.homeFeed) {
            Text($0.data ?? "no data")
        }

        
        
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
