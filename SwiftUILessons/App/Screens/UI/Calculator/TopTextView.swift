//
//  TopTextView.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 17.04.2025.
//

import SwiftUI

struct TopTextView: View {
    
    @Binding var expression: String
    @Binding var position: ScrollPosition
    
    var body: some View {
        ScrollView (.horizontal) {
             
            
            Text(expression)
                .multilineTextAlignment(.trailing)
                .foregroundStyle(.white)
                .font(Font.system(size: 90, weight: .thin))
                .padding([.leading, .trailing], 30)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .scaleEffect(x: -1, y: 1)
                
                
                
                
        }
        .scrollPosition($position)
        .scrollBounceBehavior(.basedOnSize, axes: [.horizontal])
        .scaleEffect(x: -1, y: 1)
            
    
    
        
            
    }
    
}

struct prev: PreviewProvider {
        
    @State static var expression: String = "123"
    @State static var position = ScrollPosition(edge: .leading)
    
    static var previews: some View {
        ZStack {
            Rectangle().ignoresSafeArea(edges: .all)
            TopTextView(expression: $expression, position: $position)
        }
    }
}
