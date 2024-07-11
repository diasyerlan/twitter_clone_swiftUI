//
//  ProfileView.swift
//  twitterClone
//
//  Created by Dias Yerlan on 10.07.2024.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedTab: TweetFilterViewModel = .tweets
    @Environment(\.dismiss) var dismiss
    @Namespace var animation
    var body: some View {
        VStack(alignment: .leading) {
            headerView
            actionButtons
            userDetailsView
            tweetFilterBar
            tweetsView
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
                    Button {
                        dismiss()
                    } label: {
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
    var tweetFilterBar: some View {
        HStack {
            ForEach(TweetFilterViewModel.allCases, id: \.rawValue) { item in
                VStack {
                    Text(item.title)
                        .font(.subheadline)
                        .fontWeight(selectedTab == item ? .semibold : .regular)
                        .foregroundStyle(selectedTab == item ? .black : .gray)
                    if(selectedTab == item) {
                        Capsule()
                            .foregroundColor(Color(.systemBlue))
                            .frame(height: 3)
                            .matchedGeometryEffect(id: "filter", in: animation)
                    } else {
                        Capsule()
                            .foregroundColor(.clear)
                            .frame(height: 3)
                    }
                }
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        selectedTab = item
                    }
                }
            }
        }
        .overlay {
            Divider()
                .offset(x: 0, y: 16)
        }
    }
    var tweetsView: some View {
        ScrollView {
            Spacer(minLength: 12)
            LazyVStack {
                ForEach(0..<9, id: \.self) { _ in
                    TweetRowView()
                }
            }
        }
    }
}
