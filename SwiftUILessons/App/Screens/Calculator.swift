//
//  Calculator.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 17.04.2025.
//

import SwiftUI

struct CalculatorView: View {
    
    @State var number1: String = "0"
    @State var number2: String = ""
    @State var action: String = ""
    @State var isNumber1: Bool = true
    @State var isAction: Bool = false
    
    @State var position = ScrollPosition(edge: .leading)
    
    var body: some View {
        VStack(spacing: 0){
            Spacer()
            
            TopTextView(number1: $number1, action: $action, number2: $number2, isNumber1: $isNumber1, isAction: $isAction, position: $position)
            
            ButtonGrid(number1: $number1, action: $action, number2: $number2, isNumber1: $isNumber1, isAction: $isAction, position: $position)
            
        }
        .frame(minWidth: 300, maxWidth: .infinity, minHeight: 400, maxHeight: .infinity)
        .background(.black)
        
        
    }
    

}


struct CalculatorScreen_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
 }


