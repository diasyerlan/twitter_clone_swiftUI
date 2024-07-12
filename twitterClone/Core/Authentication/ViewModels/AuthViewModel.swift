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
    init() {
        self.userSession = Auth.auth().currentUser
        print("DEBUG - User session is \(String(describing: userSession)) ")
    }
    
    func login(withEmail email: String, password: String) {
        print("DEBUG - Logged in with \(email)")
    }
    
    func register(email: String, username: String, fullName: String, password: String) {
        print("DEBUG - Registered with \(email)")
    }
}
