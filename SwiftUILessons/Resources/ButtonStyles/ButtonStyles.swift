//
//  ButtonStyles.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 26.04.2025.
//

import SwiftUI

struct RedButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.red)
            .padding(10)
            .background(Color.red)
            .cornerRadius(5)
            .opacity(configuration.isPressed ? 0.5 : 1)
    }
}

struct CalculatorButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(10)
            .background(configuration.isPressed ? Color.white : Color.gray)
            .opacity(configuration.isPressed ? 0.9 : 1)
            .cornerRadius(180)
            .aspectRatio(1, contentMode: .fit)
            
    }
}


struct ButtonGridPrevie: PreviewProvider {
    
    @State static var number1 = "0"
    
    @State static var position = ScrollPosition(edge: .trailing)
    
    @State static var number2: String = "0"
    @State static var action: String = ""
    @State static var isNumber1: Bool = true
    @State static var isAction: Bool = false
    
    
    static var previews: some View {
        ButtonGrid(number1: $number1, action: $action, number2: $number2, isNumber1: $isNumber1, isAction: $isAction, position: $position)
    }
}
