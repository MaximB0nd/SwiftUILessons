//
//  Images.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 23.03.2025.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        
        Image("trash")
            .resizable()
            //.scaledToFit()
            .scaledToFill()
            .clipShape(.buttonBorder)
            .frame(width: 200, height: 400)
            .clipped()
            
            
        
            
    }
}

#Preview {
    ImageView()
}
