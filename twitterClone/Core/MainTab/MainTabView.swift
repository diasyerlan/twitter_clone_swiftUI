//
//  MainTabView.swift
//  twitterClone
//
//  Created by Dias Yerlan on 10.07.2024.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        @State var selectedTab = 0
        TabView(selection: $selectedTab) {
            FeedView()
                .onTapGesture {
                    selectedTab = 0
                }
                .tabItem {
                    Image(systemName: "house")
                }.tag(0)
            
            ExploreView()
                .onTapGesture {
                    selectedTab = 1
                }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }.tag(1)
            
            NotificationsView()
                .onTapGesture {
                    selectedTab = 2
                }
                .tabItem {
                    Image(systemName: "bell")
                }.tag(2)
            
            MessagesView()
                .onTapGesture {
                    selectedTab = 3
                }
                .tabItem {
                    Image(systemName: "envelope")
                }.tag(3)
        }
    }
}

#Preview {
    MainTabView()
}
