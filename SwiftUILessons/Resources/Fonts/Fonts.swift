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
    
    func font(_ font: FontBuilder) -> Text {
        self.font(font.font)
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
        weight: Font.Weight = .regular,
        letterSpacing: CGFloat = 1,
        lineHeight: CGFloat
    ){
        self.font = .custom(customFont, size: fontSize).weight(weight)
        self.tracking = fontSize * letterSpacing
        let uiFont = UIFont(name: customFont.rawValue, size: fontSize)!
        self.lineSpacing = Double(uiFont.lineHeight - lineHeight)
        self.verticalPadding = self.lineSpacing / 2
    }
}

extension FontBuilder {
     
    static let title = FontBuilder(
        customFont: .ubuntu,
        fontSize: 18,
        lineHeight: 24
    )
    
    static let h2 = FontBuilder(
        customFont: .ubuntu,
        fontSize: 18,
        weight: .bold,
        lineHeight: 26
    )
    
    static let screenSunTitle = FontBuilder(
        customFont: .ubuntu,
        fontSize: 18,
        weight: .bold,
        lineHeight: 26)
    
    static let smallButtonText = FontBuilder(
        customFont: .ubuntu,
        fontSize: 16,
        weight: .bold,
        lineHeight: 24)
    
    static let boddyText = FontBuilder(
        customFont: .ubuntu,
        fontSize: 18,
        weight: .regular,
        lineHeight: 24)
    
}
