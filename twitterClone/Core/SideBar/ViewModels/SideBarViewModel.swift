//
//  SideBarViewModel.swift
//  twitterClone
//
//  Created by Dias Yerlan on 11.07.2024.
//

import Foundation

enum SideBarViewModel: Int, CaseIterable {
    case profile, lists, bookmarks, logout
    
    var title: String {
        switch self {
        case .profile: return "Profile"
        case .lists: return "Lists"
        case .bookmarks: return "Bookmarks"
        case .logout: return "Log Out"
        }
    }
    var image: String {
        switch self {
        case .profile: return "person"
        case .lists: return "list.bullet"
        case .bookmarks: return "bookmark"
        case .logout: return "arrow.left.square"
        }
    }
}
