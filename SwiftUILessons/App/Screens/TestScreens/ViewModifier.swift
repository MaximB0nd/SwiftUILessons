//
//  ViewModifier.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 17.06.2025.
//

import Foundation
import SwiftUI

struct ViewWithModifier: View {
    var body: some View {
        Text("Hello, World!")
            .modifier(TextViewModifier())
    }
}

struct TextViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.red)
            .font(.system(size: 36))
    }
}

#Preview {
    ViewWithModifier()
}
