//
//  UserStatsView.swift
//  twitterClone
//
//  Created by Dias Yerlan on 11.07.2024.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
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
}

#Preview {
    UserStatsView()
}
