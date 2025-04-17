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
            TopTextView()
            
            ButtonGrid()
            
        }
        .background(.black)
        .ignoresSafeArea(.all)
        
    }
    

}


