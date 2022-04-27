//
//  MasterAuth.swift
//  plazm_swift
//
//  Created by Edward Han on 4/24/22.
//

import Foundation
import SwiftUI

struct MasterView: View {

    @EnvironmentObject var sessionManager: SessionManager

    var body: some View {

        switch sessionManager.authState {
        case .login:
            SignInView()
                .environmentObject(sessionManager)

        case .signUp:
            SignUpView()
                .environmentObject(sessionManager)

        // When user registers for the first time or tries to login
        case .confirmCode(let username):
            ConfirmationView(username: username)
                .environmentObject(sessionManager)

        // If user is signIn, show normal view
        case .session(let user):
            ContentView(authId: user.userId)

        }
    }
}

struct MasterView_Previews: PreviewProvider {
    static var previews: some View {
        MasterView()
    }
}
