//
//  SideMenuView.swift
//  twitterClone
//
//  Created by Dias Yerlan on 11.07.2024.
//

import SwiftUI

struct SideMenuView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    var body: some View {
            VStack(alignment: .leading, spacing: 24) {
                VStack(alignment: .leading, spacing: 4) {
                    Circle()
                        .frame(width: 48, height: 48)
                    Text("Dias Yerlan")
                        .font(.headline)
                    
                    Text("@diasyerlan")
                        .font(.caption)
                        .foregroundStyle(.gray)
                    UserStatsView()
                }
                VStack {
                    ForEach(SideBarViewModel.allCases, id: \.rawValue) { item in
                        if item == .profile {
                            NavigationLink {
                                ProfileView()
                            } label: {
                                SideMenuOptionRowView(item: item)
                            }
                        } else if item == .lists {
                            NavigationLink {
                                ProfileView()
                            } label: {
                                SideMenuOptionRowView(item: item)
                            }
                        } else if item == .bookmarks {
                            NavigationLink {
                                ProfileView()
                            } label: {
                                SideMenuOptionRowView(item: item)
                            }
                        } else if item == .logout {
                            Button {
                                authViewModel.signOut()
                            } label: {
                                SideMenuOptionRowView(item: item)
                            }
                        }
                    }
                }
                Spacer()
            }
            .padding()
        }
    }

#Preview {
    SideMenuView()
}
