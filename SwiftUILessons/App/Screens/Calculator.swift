//
//  Calculator.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 17.04.2025.
//

import SwiftUI

struct CalculatorView: View {
    
    
    @State var expression: Substring = " 0"
    
    @State var position = ScrollPosition(edge: .leading)
    
    var body: some View {
        VStack(spacing: 0){
            Spacer()
            
            TopTextView(expression: $expression, position: $position)
            
            ButtonGrid(expression: $expression, position: $position)
            
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


