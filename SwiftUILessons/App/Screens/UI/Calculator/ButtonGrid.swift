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
        
        let NumberButtonProperties = (number1: $number1, number2: $number2, isNumber1: $isNumber1, isAction: $isAction, position: $position)
        
        let numberAction: (String) -> Void = { symbol in
            position.scrollTo(edge: .leading)
            
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
            
        }
        
        Grid(horizontalSpacing: 10, verticalSpacing: 10) {
            
            
            GridRow {
                ButtonNumberView(path: "delete.backward", numberAction, NumberButtonProperties) .buttonStyle(CalculatorButtonStyle())
                
                ButtonNumberView(symbol: "1", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonNumberView(symbol: "1", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonNumberView(symbol: "1", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
               
            }
            GridRow {
                ButtonNumberView(symbol: "1", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonNumberView(symbol: "1", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonNumberView(symbol: "1", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonNumberView(symbol: "1", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
            }
            GridRow {
                ButtonNumberView(symbol: "1", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonNumberView(symbol: "1", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonNumberView(symbol: "1", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonNumberView(symbol: "1", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
            }
            GridRow {
                ButtonNumberView(symbol: "1", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonNumberView(symbol: "1", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonNumberView(symbol: "1", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonNumberView(symbol: "1", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
            }
            GridRow {
                ButtonNumberView(symbol: "1", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonNumberView(symbol: "1", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonNumberView(symbol: "1", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonNumberView(symbol: "1", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
            }
        }.padding(10)
    }
    
    
}

struct ButtonNumberView: View {
    
    var symbol: String = ""
    
    @Binding var number1: String
    @Binding var number2: String
    @Binding var isNumber1: Bool
    @Binding var isAction: Bool
    @Binding var position: ScrollPosition
    
    
    var imageName: String = ""
    let action: (String) -> Void
    
    var body: some View {
        Button {
            action(symbol)
        } label: {
            if !symbol.isEmpty {
                Text("\(symbol)")
                    .font(Font.system(size: 40))
                    .minimumScaleFactor(0.2)
                    .foregroundStyle(.white)
            }
            else {
                Image(systemName: imageName)
                    .font(Font.system(size: 40))
                    .foregroundStyle(.white)
                    
                
            }
                
        }
    }
    
    init (path: String, _ action: @escaping (String) -> Void, _ NumberButtonProperties: (number1: Binding<String>, number2: Binding<String>, isNumber1: Binding<Bool>, isAction: Binding<Bool>, position: Binding<ScrollPosition>))
    {
        imageName = path
        self._number1 = NumberButtonProperties.number1
        self._number2 = NumberButtonProperties.number2
        self._isAction = NumberButtonProperties.isAction
        self._isNumber1 = NumberButtonProperties.isNumber1
        self._position = NumberButtonProperties.position
        self.action = action
        
    }
    
    
    init( symbol: String, _ action: @escaping (String) -> Void, _ NumberButtonProperties: (number1: Binding<String>, number2: Binding<String>, isNumber1: Binding<Bool>, isAction: Binding<Bool>, position: Binding<ScrollPosition>))
    {
        self.symbol = symbol
        self._number1 = NumberButtonProperties.number1
        self._number2 = NumberButtonProperties.number2
        self._isAction = NumberButtonProperties.isAction
        self._isNumber1 = NumberButtonProperties.isNumber1
        self._position = NumberButtonProperties.position
        self.action = action
    }
    
}

struct ButtonGridPreview: PreviewProvider {
    
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
