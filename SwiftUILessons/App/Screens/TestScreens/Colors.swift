//
//  Colors.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 22.03.2025.
//

import SwiftUI

struct ColorView: View {
    var body: some View {
        let cgRed = CGColor(srgbRed: 0.84, green: 0.34, blue: 0.33, alpha: 1.0)
        let colorRed = Color(cgColor: cgRed)
        
        Rectangle()
            .fill(colorRed)
            .frame(width: 300, height: 300)
            .clipShape(.buttonBorder)
        ZStack{
            Rectangle()
                .frame(width: 100, height: 100)
                .clipShape(.buttonBorder)
            
            Rectangle()
                .fill(Color("Accent"))
                .frame(width: 200, height: 200)
                .clipShape(.buttonBorder)
            
            
        }
    }
}

#Preview {
    ColorView()
}
