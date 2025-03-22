//
//  CustomColors.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 22.03.2025.
//

import SwiftUI

enum CustomColors: String {
    case Accent
}

extension Color {
    init(_ customColor: CustomColors){
        self.init(customColor.rawValue)
    }
}
