//
//  ConfirmationView.swift
//  plazm_swift
//
//  Created by Edward Han on 4/24/22.
//

import Foundation

import SwiftUI
import Amplify

struct ConfirmationView: View {

    @EnvironmentObject var authSessionManager: SessionManager

    @State var confirmationCode: String = ""

    let username: String

    var body: some View {
        VStack {
            Text("Username: \(username)")
            TextField("Confirmation Code: ", text: $confirmationCode)
                .padding()
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            Button(action: {
                authSessionManager.confirm(
                    username: username,
                    code: confirmationCode
                )
            }){
                Text("Confirm")
            }

            Spacer()
            Button(action: {
                authSessionManager.showSignUp()
            }) {
                Text("Already have an account? Log in")
            }
        }
    }
}
