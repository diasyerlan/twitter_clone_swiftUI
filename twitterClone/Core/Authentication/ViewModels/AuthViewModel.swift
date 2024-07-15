//
//  AuthViewModel.swift
//  twitterClone
//
//  Created by Dias Yerlan on 13.07.2024.
//

import Foundation
import Firebase

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    @Published var didAuthenticateUser = false
    
    init() {
        self.userSession = Auth.auth().currentUser
        print("DEBUG - User session is \(String(describing: userSession)) ")
    }
    
    func login(withEmail email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG - Failed to sign in user with error - \(error.localizedDescription)")
                return
            }
            guard let user = result?.user else { return }
            self.userSession = user
            
            print("DEBUG - User signed in successfuly!")
            print("Debug - User is \(String(describing: self.userSession))")
        }
        print("DEBUG - Logged in with \(email)")
    }
    
    func register(email: String, username: String, fullName: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG - Failed to register user with error - \(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else { return }
            
            print("DEBUG - User registered successfuly!")
            print("Debug - User is \(String(describing: self.userSession))")
            
            let data = ["email": email, "username": username, "fullName": fullName, "password": password]
            
            Firestore.firestore().collection("users")
                .document(user.uid)
                .setData(data) { _ in
                    self.didAuthenticateUser = true
                }
        }
        print("DEBUG - Registered with \(email)")
        
    }
    
    func signOut() {
        userSession = nil
        try? Auth.auth().signOut()
    }
}
