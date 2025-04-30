//
//  TopTextView.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 17.04.2025.
//

import SwiftUI

struct TopTextView: View {
    
    @Binding var number1: String
    @Binding var action: String
    @Binding var number2: String
    @Binding var isNumber1: Bool
    @Binding var isAction: Bool
    @Binding var position: ScrollPosition
    
    var body: some View {
        ScrollView (.horizontal) {
             
            
            Text("\(number1)\(isAction ? action : "")\((!isAction && !isNumber1) ? number2 : "")")
                .lineLimit(1)
                .minimumScaleFactor(0.4)
                .foregroundStyle(.white)
                .font(Font.system(size: 90, weight: .thin))
                .padding([.leading, .trailing], 30)
                
                
        }
        .scrollPosition($position)
        
            
        
        
    
        
            
    }
    
}

struct prev: PreviewProvider {
    
    @State static var number1 = "11231"
    
    @State static var position = ScrollPosition(edge: .trailing)
    
    static var previews: some View {
        ZStack {
            Rectangle().ignoresSafeArea(edges: .all)
            //TopTextView(number1: $number1, position: $position)
        }
    }
}
