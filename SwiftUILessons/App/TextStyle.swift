//
//  TextStyle.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 19.03.2025.
//

import SwiftUI

struct TextStyleView: View {
    var body: some View {
        Text("Fried eggs with ham, 2 eggs")
            .font(Font.custom(.ubuntu, size: 18))
        Text("Fried eggs with ham, 2 eggs")
    }
}

#Preview {
    TextStyleView()
}
