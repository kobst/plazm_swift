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
    
    @StateObject var userProfile = UserProfile()
    
//    let user: AuthUser
    
//    init(){
//        let _userLocation = Coordinates(lat: 41.2, lng: 72.2)
//        self.userProfile = UserProfile(_id: self.sessionManager.authUserId!, location: _userLocation)
//    }
    
    var body: some View {
        Text("Hello, world!")
            .padding()
            .onAppear(){
                if let user_sub = sessionManager.authUserId {
                    self.userProfile.getUser(auth_user_sub: user_sub)
                }
            }
        if let userSpecs = userProfile._user {
            Text(userSpecs.email ?? "no email").padding()
//            userSpecs.listFollowed?.forEach(_id => {
//                Text(_id)
//            })
        }
    
        ForEach(userProfile.homeFeed, id: \.self) {
            Text($0.data ?? "no data")
        }
//        List(userProfile.homeFeed) { _list in
//            Text(_list.data ?? "no info")
//          }
//
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
