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
            VStack(alignment: .leading) {
                HStack { Spacer() }
                Text("Hello.")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text("Welcome Back")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            .frame(height: 260)
            .padding(.leading)
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(RectShape(corners: [.bottomRight]))
            
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
                NavigationLink {} label: {
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
    }
}

#Preview {
    LoginView()
}
