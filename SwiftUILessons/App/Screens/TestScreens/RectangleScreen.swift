//
//  RectangleScreen.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 11.04.2025.
//

import SwiftUI

struct RectangleScreen: View {
    var body: some View {
        VStack(spacing: 10){
            Rectangle()
                .fill(Color.red)
                .aspectRatio(1, contentMode: .fit)
                .padding([.leading, .trailing], 40)
           Rectangle()
                .fill(Color.blue)
                .aspectRatio(CGSize(width: 100, height: 100), contentMode: .fit)
                .padding([.leading, .trailing], 50)
        }
    }
}

#Preview {
    RectangleScreen()
}
