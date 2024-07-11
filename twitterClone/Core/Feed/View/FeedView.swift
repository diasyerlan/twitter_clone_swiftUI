//
//  FeedView.swift
//  twitterClone
//
//  Created by Dias Yerlan on 10.07.2024.
//

import Foundation
import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView {
            Spacer(minLength: 20)
            ForEach(0..<20, id: \.self) { _ in
                TweetRowView()
            }
        }
    }
}

#Preview {
    FeedView()
}
