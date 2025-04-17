//
//  TopTextView.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 17.04.2025.
//

import SwiftUI

struct TopTextView: View {
   
    
    var body: some View {
        Text("123.4")
            .foregroundStyle(.white)
            .font(Font.system(size: 90, weight: .thin))
            .frame(maxWidth: .infinity, alignment: .trailing)
            .padding([.leading, .trailing], 30)
    }
    
   
    
    
}

