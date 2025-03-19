//
//  Fonts.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 19.03.2025.
//

import Foundation
import SwiftUI

enum CustomFonts: String {
    case ubuntu = "Ubuntu"
}

extension Font {
    static func custom(_ name: CustomFonts, size: CGFloat) -> Font {
        custom(name.rawValue, size: size)
    }
}
