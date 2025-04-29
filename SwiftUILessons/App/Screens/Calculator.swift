//
//  Calculator.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 17.04.2025.
//

import SwiftUI

struct CalculatorView: View {
    
    var body: some View {
        VStack(spacing: 0){
            Spacer()
            
            TopTextView()
            
            ButtonGrid()
            
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


