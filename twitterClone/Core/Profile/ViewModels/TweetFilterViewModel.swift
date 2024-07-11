//
//  TweetFilterViewModel.swift
//  twitterClone
//
//  Created by Dias Yerlan on 11.07.2024.
//

import Foundation

enum TweetFilterViewModel: Int, CaseIterable {
    case tweets, replies, likes
    var title: String {
        switch self {
        case .tweets: return "Tweets"
        case .replies: return "Replies"
        case .likes: return "Likes"
        }
    }
}
