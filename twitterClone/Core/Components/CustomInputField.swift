//
//  CustomInputField.swift
//  twitterClone
//
//  Created by Dias Yerlan on 12.07.2024.
//

import SwiftUI

struct CustomInputField: View {
    let image: String
    let placeholder: String
    let securePassword: Bool? = true
    @Binding var text: String
    var body: some View {
        VStack {
            HStack {
                Image(systemName: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.darkGray))
                if securePassword ?? true {
                    SecureField(placeholder, text: $text)
                } else {
                    TextField(placeholder, text: $text)
                }
            }
            Divider()
                .background(Color(.darkGray))
        }
    }
}

#Preview {
    CustomInputField(image: "envelope", placeholder: "Username", text: .constant(""))
}
