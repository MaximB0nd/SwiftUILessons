//
//  ButtonGrid.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 17.04.2025.
//

import SwiftUI


struct ButtonGrid: View {
    
    @Binding var expression: [String]
    @Binding var actions: [Action]
    @Binding var position: ScrollPosition
    
    var body: some View {
       
        Grid(horizontalSpacing: 10, verticalSpacing: 10) {
            
            
            GridRow {
                
               
            }
            GridRow {
                
            }
            GridRow {
                
            }
            GridRow {
                
            }
            GridRow {
                
            }
        }.padding(10)
    }
    
    
}

struct ButtonGridPreview: PreviewProvider {
    
    @State static var position = ScrollPosition(edge: .trailing)
    @State static var actions: [Action] = []
    @State static var expression: [String] = ["0"]
    
    
    static var previews: some View {
        ButtonGrid(expression: $expression, actions: $actions, position: $position)
    }
}
