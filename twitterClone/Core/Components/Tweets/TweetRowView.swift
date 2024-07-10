//
//  TweetRowView.swift
//  twitterClone
//
//  Created by Dias Yerlan on 10.07.2024.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack(alignment: .top, spacing: 12) {
                    Circle()
                        .frame(width: 56, height: 56)
                    VStack(alignment: .leading, spacing: 4) {
                        HStack {
                            Text("Bruce Wayne")
                                .font(.subheadline)
                                .fontWeight(.bold)
                            
                            Text("@batman")
                                .font(.caption)
                                .foregroundColor(.gray)
                            Text("2w")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        Text("I am Iron man")
                            .font(.subheadline)
                            .multilineTextAlignment(.leading)
                    }
                }
                HStack {
                    Button {} label: {
                        Image(systemName: "bubble.left")
                    }
                    Spacer()
                    Button {} label: {
                        Image(systemName: "arrow.rectanglepath")
                    }
                    Spacer()
                    Button {} label: {
                        Image(systemName: "heart")
                    }
                    Spacer()
                    Button {} label: {
                        Image(systemName: "bookmark")
                    }
                }
                .foregroundColor(.gray)
                .padding()
            }
            .padding(.horizontal)
            Divider()
            Spacer(minLength: 15)
        }
    }
}

#Preview {
    TweetRowView()
}
