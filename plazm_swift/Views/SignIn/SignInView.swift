//
//  SignInView.swift
//  plazm_swift
//
//  Created by Edward Han on 4/24/22.
//

import Foundation
import SwiftUI

struct SignInView: View {

    @EnvironmentObject var authSessionManager: SessionManager

    @State var username: String = ""
    @State var password: String = ""

    var body: some View {
        VStack {
            TextField("Username", text: $username)
                .padding()
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            SecureField("Password", text: $password)
                .padding()
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            Button(action: {
                authSessionManager.login(
                    username: username,
                    password: password
                )
            }){
                Text("Sign In")
            }

            Spacer()
            Button(action: {
                authSessionManager.showSignUp()
            }) {
                Text("Sign up")
            }
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
