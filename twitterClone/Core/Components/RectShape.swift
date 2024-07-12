//
//  RectShape.swift
//  twitterClone
//
//  Created by Dias Yerlan on 12.07.2024.
//

import SwiftUI

struct RectShape: Shape {
    var corners: UIRectCorner
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: 80, height: 80))
        return Path(path.cgPath)
    }
}
