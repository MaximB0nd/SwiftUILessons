//
//  TopTextView.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 17.04.2025.
//

import SwiftUI

struct TopTextView: View {
    
    @Binding var expression: [Substring]
    @Binding var actions: [Action]
    @Binding var position: ScrollPosition
    
    
    var body: some View {
        
      
        
        ScrollView (.horizontal) {
            HStack {
                ForEach (0...actions.count, id: \.self ) { i in
                    HStack (spacing: 0) {
                        Text(expression[i]).multilineTextAlignment(.trailing)
                            .foregroundStyle(.white)
                            .font(Font.system(size: 90))
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .scaleEffect(x: -1, y: 1)
                        if i < actions.count {
                            Image(systemName: "\(actions[i].rawValue)")
                                .multilineTextAlignment(.trailing)
                                .foregroundStyle(.white)
                                .font(Font.system(size: 55, weight: .bold))
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .scaleEffect(x: -1, y: 1)
                        }
                    }
                }
            }
            .padding([.leading, .trailing], 30)
            
                
                
                
        }
        .scrollPosition($position)
        .scrollBounceBehavior(.basedOnSize, axes: [.horizontal])
        .fixedSize(horizontal: false, vertical: true)
        .scaleEffect(x: -1, y: 1)
            
    
    
        
            
    }
    
}

struct prev: PreviewProvider {
        
    @State static var expression: [Substring] = ["123", "123"]
    @State static var position = ScrollPosition(edge: .leading)
    @State static var actions: [Action] = [.plus]
    
    static var previews: some View {
        ZStack {
            Rectangle().ignoresSafeArea(edges: .all)
            TopTextView(expression: $expression, actions: $actions, position: $position)
        }
    }
}
