//
//  ProfileView.swift
//  twitterClone
//
//  Created by Dias Yerlan on 10.07.2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .leading) {
            headerView
            actionButtons
            userDetailsView
            Spacer()
        }
    }
}

#Preview {
    ProfileView()
}

extension ProfileView {
    var headerView: some View {
            ZStack(alignment: .bottomLeading) {
                Color(.systemBlue)
                    .ignoresSafeArea()
                
                VStack {
                    Button {} label: {
                        Image(systemName: "arrow.left")
                            .resizable()
                            .frame(width: 20, height: 16)
                            .foregroundColor(.white)
                            .offset(x: 16, y: 18)
                    }
                    Circle()
                        .frame(width: 96, height: 96)
                        .offset(x: 16, y: 40)
                }
        }
        .frame(height: 96)
    }
    var actionButtons: some View {
        HStack(spacing: 12) {
            Spacer()
            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(6)
                .overlay {
                    Circle().stroke(Color.gray, lineWidth: 0.75)
                }
            Button {} label: {
                Text("Edit Profile")
                    .font(.subheadline.bold())
                    .foregroundColor(.black)
                    .frame(width: 120, height: 32)
                    .overlay {
                        RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.75)
                    }
            }
        }
        .padding()
    }
    var userDetailsView: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text("Dias Yerlan")
                    .font(.title2.bold())
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(Color(.systemBlue))
            }
            Text("@diasyerlan")
                .font(.subheadline)
                .foregroundStyle(.gray)
            Text("Bio text that no one cares about")
                .font(.subheadline)
                .padding(.vertical)
            HStack(spacing: 24) {
                HStack(spacing: 4) {
                    Image(systemName: "mappin.and.ellipse")
                    Text("Tokyo, Japan")
                }
                HStack(spacing: 4) {
                    Image(systemName: "link")
                    Text("diasyerlan.com")
                }
            }
            .font(.caption)
            .foregroundColor(.gray)
            
            HStack(spacing: 24) {
                HStack(spacing: 4) {
                    Text("123")
                        .font(.subheadline.bold())
                    Text("following")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
                HStack(spacing: 4) {
                    Text("100B")
                        .font(.subheadline.bold())
                    Text("followers")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
            }
            .padding(.vertical)
        }
        .padding(.horizontal)
    }
}
