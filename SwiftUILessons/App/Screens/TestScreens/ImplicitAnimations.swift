//
//  ImplicitAnimations.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 18.06.2025.
//

import SwiftUI

struct ImplicitAnimations: View {
    
    @State var onBorder: Bool = false
    
    var body: some View {
        content
            .padding(onBorder ? 40 : 0)
            .background(.red)
            .animation(.bouncy, value: onBorder)
        
        Button("Toggle border") {
            onBorder.toggle()
        }
    }
    
    var content: some View {
        Rectangle()
            .fill(onBorder ? .white : .red)
            .frame(width: 100, height: 100)
    }
}

#Preview {
    ImplicitAnimations()
}
