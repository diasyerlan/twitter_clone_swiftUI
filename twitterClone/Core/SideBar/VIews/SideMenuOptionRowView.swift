//
//  SideMenuOptionRowView.swift
//  twitterClone
//
//  Created by Dias Yerlan on 11.07.2024.
//

import SwiftUI

struct SideMenuOptionRowView: View {
    var item: SideBarViewModel
    var body: some View {
        HStack {
            Image(systemName: item.image)
                .font(.headline)
                .foregroundColor(.gray)
            
            Text(item.title)
                .font(.subheadline)
                .foregroundStyle(.black)
            Spacer()
        }
        .frame(height: 40)
    }
}

#Preview {
    SideMenuOptionRowView(item: .profile)
}
