//
//  FeedView.swift
//  twitterClone
//
//  Created by Dias Yerlan on 10.07.2024.
//

import Foundation
import SwiftUI

struct FeedView: View {
    @State private var showTweet = false
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                Spacer(minLength: 20)
                ForEach(0..<20, id: \.self) { _ in
                    TweetRowView()
                }
            }
            Button {
                showTweet = true
            } label: {
                Image("tweet")
                    .resizable()
                    .frame(width: 42, height: 42)
                    .padding(12)
            }
            .foregroundColor(.white)
            .background(.white)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.blue, lineWidth: 4)
            }
            .padding()
            .fullScreenCover(isPresented: $showTweet) {
                NewTweetView()
            }
        }
    }
}

#Preview {
    FeedView()
}
