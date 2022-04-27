//
//  SignUpView.swift
//  plazm_swift
//
//  Created by Edward Han on 4/24/22.
//

import Foundation
import SwiftUI

struct SignUpView: View {

    @EnvironmentObject var authSessionManager: SessionManager

    @State var username: String = ""
    @State var email: String = ""
    @State var password: String = ""

    var body: some View {
        VStack {
            TextField("Username", text: $username)
                .padding()
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            TextField("Email", text: $email)
                .padding()
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            SecureField("Password", text: $password)
                .padding()
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            Button(action: {
                authSessionManager.signUp(
                    username: username,
                    email:email,
                    password: password
                )
            }){
                Text("Sign Up")
            }

            Spacer()
            Button(action: {
                authSessionManager.showLogin()
            }) {
                Text("Log in")
            }
        }
    }
}
