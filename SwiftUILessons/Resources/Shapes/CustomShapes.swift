//
//  CustomShapes.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 25.03.2025.
//

import SwiftUI

struct RoundCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}
