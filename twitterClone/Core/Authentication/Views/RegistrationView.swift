//
//  RegistrationView.swift
//  twitterClone
//
//  Created by Dias Yerlan on 12.07.2024.
//

import SwiftUI

struct RegistrationView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    @State private var email = ""
    @State private var username = ""
    @State private var fullName = ""
    @State private var password = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
    
        VStack {
            NavigationLink(value: "add photo", label: {})
            AuthenticationHeaderView(title1: "Get Started.", title2: "Create Your Account")
            
            VStack(spacing: 40) {
                CustomInputField(image: "envelope", placeholder: "Email", text: $email)
                CustomInputField(image: "person", placeholder: "Username", text: $username)
                CustomInputField(image: "person", placeholder: "Full Name", text: $fullName)
                CustomInputField(image: "lock", placeholder: "Password", text: $password, securePassword: true)
            }
            .padding(32)
            
            Button {
                viewModel.register(email: email, username: username, fullName: fullName, password: password)
            } label: {
                Text("Sign Up")
                    .font(.headline)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10)
            Spacer()
            HStack {
                Button {
                    dismiss()
                } label: {
                    Text("Already have an account?")
                        .font(.footnote)
                    Text("Sign In")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                .padding(.bottom, 32)
                .foregroundColor(Color(.systemBlue))
                
            }
        }
        .ignoresSafeArea()
        .navigationDestination(isPresented: $viewModel.didAuthenticateUser) {
            ProfilePhotoSelectorView()
        }
    }
}

#Preview {
    RegistrationView()
}
