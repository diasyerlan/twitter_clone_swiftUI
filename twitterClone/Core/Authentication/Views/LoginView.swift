//
//  LoginView.swift
//  twitterClone
//
//  Created by Dias Yerlan on 12.07.2024.
//

import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    var body: some View {
        VStack {
            AuthenticationHeaderView(title1: "Hello.", title2: "Welcome Back")
            
            VStack(spacing: 40) {
                CustomInputField(image: "envelope", placeholder: "Username", text: $username)
                CustomInputField(image: "lock", placeholder: "Password", text: $password)
            }
            .padding(.top, 44)
            .padding(.horizontal, 32)
            
            HStack {
                Spacer()
                NavigationLink {} label: {
                    Text("Forgot Password?")
                        .foregroundStyle(Color(.systemBlue))
                        .font(.caption)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 24)
                }
            }
            
            Button {} label: {
                Text("Sign In")
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
                NavigationLink {
                    RegistrationView()
                        .toolbar(.hidden)
                } label: {
                    Text("Don't have an account?")
                        .font(.footnote)
                    Text("Sign Up")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                .padding(.bottom, 32)
                .foregroundColor(Color(.systemBlue))
                
            }
        }
        .ignoresSafeArea()
        .toolbar(.hidden)
    }
}

#Preview {
    LoginView()
}
