//
//  ProfilePhotoSelectorView.swift
//  twitterClone
//
//  Created by Dias Yerlan on 15.07.2024.
//

import SwiftUI

struct ProfilePhotoSelectorView: View {
    @State private var showImagePicker = false
    @State private var selectedImage: UIImage?
    @State private var profileImage: Image?
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        VStack {
            AuthenticationHeaderView(title1: "Create your account.", title2: "Add a profile photo")
            Button {
                showImagePicker.toggle()
            } label: {
                if let profileImage = profileImage {
                    profileImage
                        .resizable()
                        .modifier(ProfileImageModifier())
                        .clipShape(Circle())

                } else {
                    Image("add-photo")
                        .resizable()
                        .renderingMode(.template)
                        .modifier(ProfileImageModifier())
                }
                    
            }
            .padding(.top, 45)
            .sheet(isPresented: $showImagePicker, onDismiss: onLoad) {
                ImagePicker(selectedImage: $selectedImage)
            }
            if let selectedImage = selectedImage{
                Button {
                    viewModel.uploadProfileImage(selectedImage)
                } label: {
                    Text("Continue")
                        .font(.headline)
                        .frame(width: 340, height: 50)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                        .padding()
                }
                .shadow(color: .gray.opacity(0.5), radius: 10)
            }
            Spacer()
        }
        .ignoresSafeArea()
    }
    
    func onLoad() {
        guard let selectedImage = selectedImage else { return }
        profileImage = Image(uiImage: selectedImage)
    }
    
    private struct ProfileImageModifier: ViewModifier {
        func body(content: Content) -> some View {
            content
                .foregroundColor(Color(.systemBlue))
                .scaledToFill()
                .frame(width: 180, height: 180)
        }
    }
}

#Preview {
    ProfilePhotoSelectorView()
}
