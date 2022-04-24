//
//  AuthSessionManager.swift
//  plazm_swift
//
//  Created by Edward Han on 4/23/22.
//


import Amplify
import Foundation

enum AuthState {
    case signUp
    case login
    case confirmCode(username: String)
    case session(user:AuthUser)
}

final class AuthSessionManager: ObservableObject {

    @Published var authState: AuthState = .login

    // Check if a current user is signed in
    func getCurrentAuthUser() {
        if let user = Amplify.Auth.getCurrentUser() {
            authState = .session(user: user)
        } else {
            authState = .login
        }
    }

    func showSignUp() {
        authState = .signUp
    }

    func showLogin() {
        authState = .login
    }

    func signUp(username: String, email: String, password: String) {
        let userAttributes = [AuthUserAttribute(.email, value: email)]
        let options = AuthSignUpRequest.Options(userAttributes: userAttributes)

        _ = Amplify.Auth.signUp(
            username: username,
            password: password,
            options: options
        ) { [weak self] result in
            switch result {
            case .success(let signUpResult):
                print("Sign up result: ", signUpResult)

                switch signUpResult.nextStep {
                case .done:
                    print("Finished sign up")
                case .confirmUser(let details, _):
                    print(details ?? "no details")

                    // Wrapped into an async queue so it when it finishes it brings back the state to the main thread ensuring there
                    // is no manipulation of the state
                    DispatchQueue.main.async {
                        // Confirm the Auth State to confirm code passing in the username to confirm
                        self?.authState = .confirmCode(username: username)
                    }
                }

            case .failure(let error):
                print("Sign up ERROR ", error)

            }
        }

    }

    func confirm(username: String, code: String) {
        _ = Amplify.Auth.confirmSignUp(
            for: username,
            confirmationCode: code
        ) { [weak self] result in
            switch result {
            case .success(let confirmResult):
                print(confirmResult)
                if confirmResult.isSignupComplete {
                    // Wrapped into an async queue so it when it finishes it brings back the state to the main thread ensuring there
                    // is no manipulation of the state
                    DispatchQueue.main.async {
                        self?.showLogin()
                    }
                }
            case .failure(let error):
                print("Failed to confirm code: ", error)
            }
        }
    }


    func login(username: String, password: String) {
        _ = Amplify.Auth.signIn(
            username: username,
            password: password
        ) { [weak self] result in
            switch result {
            case .success(let signInResult):
                print(signInResult)
                if signInResult.isSignedIn {
                    DispatchQueue.main.async {
                        self?.getCurrentAuthUser()
                    }
                }
            case .failure(let error):
                print("Login ERROR: ", error)
            }
        }
    }

    func signOut() {
        _ = Amplify.Auth.signOut { [weak self] result in
            switch result {
            case .success:
                DispatchQueue.main.async {
                    self?.getCurrentAuthUser()
                }

            case .failure(let error):
                print("Sign out ERROR ", error)
            }
        }
    }
}
