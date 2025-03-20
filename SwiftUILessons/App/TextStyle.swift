//
//  TextStyle.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 19.03.2025.
//

import SwiftUI

struct TextStyleView: View {
    var body: some View {
        let lineHeight = 24.0
        let font = UIFont(name: CustomFonts.ubuntu.rawValue, size: 18)  ?? . systemFont(ofSize: 18)
        let lineSpacing = lineHeight - font.lineHeight
        let padding = (lineHeight - font.lineHeight) / 2
        
        Group {
            Text("Fried eggs with ham, 2 eggs")
                .font(Font.custom(.ubuntu, size: 18))
                .fontWeight(.bold)
                .italic(true)
                .tracking(18 * 0.3)
                .strikethrough(pattern: .solid, color: .red)
            
            
            Text("Fried eggs with ham, 2 eggs\nqseqwe")
            //            .lineSpacing(lineSpacing)
                .padding(.vertical, padding)
                .foregroundColor(Color(CGColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                .underline(pattern: .dashDotDot, color: .red)
        }
        
        Text("Fried eggs with ham, 2 eggs")
    }
}

#Preview {
    TextStyleView()
}
