//
//  ProfilePhotoSelectorView.swift
//  twitterClone
//
//  Created by Dias Yerlan on 15.07.2024.
//

import SwiftUI

struct ProfilePhotoSelectorView: View {
    var body: some View {
        VStack {
            AuthenticationHeaderView(title1: "Create your account.", title2: "Add a profile photo")
            Button {} label: {
                Image("add-photo")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(Color(.systemBlue))
                    .scaledToFill()
                    .frame(width: 180, height: 180)
                    .padding(.top, 45)
                    
            }
            Spacer()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ProfilePhotoSelectorView()
}
