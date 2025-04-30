//
//  ButtonGrid.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 17.04.2025.
//

import SwiftUI

struct ButtonGrid: View {
    
    @Binding var number1: String
    @Binding var action: String
    @Binding var number2: String
    @Binding var isNumber1: Bool
    @Binding var isAction: Bool
    @Binding var position: ScrollPosition
    
    
    var body: some View {
        
        Grid(horizontalSpacing: 10, verticalSpacing: 10) {
            
            
            GridRow {
                
               
            }
            GridRow {
                
            }
            GridRow {
                ButtonNumberView(symbol: "1", number1: $number1, number2: $number2, isNumber1: $isNumber1, isAction: $isAction, position: $position)
            }
            GridRow {
                
            }
            GridRow {
                
            }
        }.fixedSize(horizontal: false, vertical: true)
    }
    
    
}

struct ButtonNumberView: View {
    
    let symbol: String
    
    @Binding var number1: String
    @Binding var number2: String
    @Binding var isNumber1: Bool
    @Binding var isAction: Bool
    @Binding var position: ScrollPosition
    
    
    
    var body: some View {
        Button {
            position.scrollTo(edge: .trailing)
            
            if (isNumber1) {
                if (number1 == "0") {
                    number1 = symbol
                }
                else {
                    number1 += symbol
                }
            }
            else if (!isNumber1){
                isAction = false
                number2 += symbol
            }
        } label: {
            Text("\(symbol)")
        }
    }
    
}

#Preview {
    
}
