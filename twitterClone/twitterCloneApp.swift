//
//  twitterCloneApp.swift
//  twitterClone
//
//  Created by Dias Yerlan on 09.07.2024.
//

import SwiftUI
import Firebase

@main
struct twitterCloneApp: App {
    @StateObject var viewModel = AuthViewModel()
    init() {
        FirebaseApp.initialize()
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                LoginView()
            }
        }
        .environmentObject(viewModel)
    }
}
