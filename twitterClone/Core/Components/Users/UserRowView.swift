//
//  UserRowView.swift
//  twitterClone
//
//  Created by Dias Yerlan on 11.07.2024.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack(spacing: 12) {
            Circle()
                .frame(width: 48, height: 48)
            VStack(alignment: .leading) {
                Text("goggins")
                    .font(.subheadline.bold())
                    .foregroundColor(.black)
                Text("David Goggins")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 5)
    }
}

#Preview {
    UserRowView()
}
