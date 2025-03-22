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

extension Text {
    func font(_ font: CustomFonts, size: CGFloat) -> Text {
        self.font(Font.custom(font.rawValue, size: size))
    }
}

struct FontBuilder {
    let font: Font
    let tracking: Double
    let lineSpacing: Double
    let verticalPadding: Double
    
    init (
        customFont: CustomFonts,
        fontSize: CGFloat,
        letterSpacing: CGFloat,
        lineHeight: CGFloat
    ){
        self.font = .custom(customFont, size: fontSize)
        self.tracking = fontSize * letterSpacing
        let uiFont = UIFont(name: customFont.rawValue, size: fontSize)!
        self.lineSpacing = Double(uiFont.lineHeight - lineHeight)
        self.verticalPadding = self.lineSpacing / 2
    }
}
