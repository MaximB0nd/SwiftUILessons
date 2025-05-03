//
//  ButtonGrid.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 17.04.2025.
//

import SwiftUI


struct ButtonGrid: View {
    
    @Binding var expression: Substring
    @Binding var position: ScrollPosition
    
    var body: some View {
        
        let NumberButtonProperties = (expression: $expression, position: $position)
        
        let numberAction: (Substring) -> Void = { symbol in
            let lastWord = expression[expression.index(after: expression.lastIndex(of: " ")!)...]
            
            let lastBefore = expression[..<expression.lastIndex(of: " ")!]
            
            if let _ = Int(String(lastWord)) {
                if lastWord != "0" && lastWord != "-0" {
                    expression += symbol
                    return
                }
                expression = lastBefore + (lastWord.contains("-") ? " -" : " ") + symbol
                return
            }
            expression = lastBefore + " \(symbol)"
            
        }
        
        let deleteAction: (Substring) -> Void = { a in
            if expression.count > (expression.contains("-") ? 3 : 2) {
                expression.removeLast()
            }
            else {
                expression = " 0"
            }
        }
        
        let plusSlashMinusAction: (Substring) -> Void = { a in
            let lastWord = expression[expression.index(after: expression.lastIndex(of: " ")!)...]
            
            let lastBefore = expression[..<expression.lastIndex(of: " ")!]
            
            if lastWord.first != "-" {
                expression = lastBefore + " -" + lastWord
            }
            else {
                expression.remove(at: expression.lastIndex(of: "-")!)
            }
            print(expression)
        }
        
        let actionAction: (Substring) -> Void = { symbol in
            let lastWord = expression[expression.index(after: expression.lastIndex(of: " ")!)...]
            
            let lastBefore = expression[..<expression.lastIndex(of: " ")!]
            
            if let _ = Int(String(lastWord)) {
                expression += " \(symbol)"
            }
            else {
                expression = lastBefore + " \(symbol)"
            }
                
            
        }
        
    
        
        Grid(horizontalSpacing: 10, verticalSpacing: 10) {
            
            
            GridRow {
                ButtonNumberView(symbol: "back", path: "delete.backward", deleteAction, NumberButtonProperties) .buttonStyle(CalculatorButtonStyle())
                
                ButtonNumberView(symbol: "+/-",path: "plus.forwardslash.minus", plusSlashMinusAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                
                
                ButtonNumberView(symbol: "1", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                
                ButtonNumberView(symbol: "/", path: "divide", actionAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
               
            }
            GridRow {
                ButtonNumberView(symbol: "7", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonNumberView(symbol: "8", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonNumberView(symbol: "9", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonNumberView(symbol: "x", path: "multiply", actionAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
            }
            GridRow {
                ButtonNumberView(symbol: "4", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonNumberView(symbol: "5", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonNumberView(symbol: "6", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonNumberView(symbol: "-", path: "minus", actionAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
            }
            GridRow {
                ButtonNumberView(symbol: "1", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonNumberView(symbol: "2", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonNumberView(symbol: "3", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonNumberView(symbol: "+",path: "plus", actionAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
            }
            GridRow {
                ButtonNumberView(symbol: "0", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonNumberView(symbol: "0", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonNumberView(symbol: "0", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonNumberView(symbol: "=",path: "equal",actionAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
            }
        }.padding(10)
    }
    
    
}

struct ButtonNumberView: View {
    
    var symbol: Substring = ""
    
    @Binding var expression: Substring
    @Binding var position: ScrollPosition
    
    
    var imageName: String = ""
    let action: (Substring) -> Void
    
    var body: some View {
        Button {
            position.scrollTo(edge: .leading)
            action(symbol)
        } label: {
            if imageName.isEmpty {
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
    
    init (symbol: Substring, path: String, _ action: @escaping (Substring) -> Void, _ NumberButtonProperties: (expression: Binding<Substring>, position: Binding<ScrollPosition>))
    {
        imageName = path
        self.symbol = symbol
        self._expression = NumberButtonProperties.expression
        self._position = NumberButtonProperties.position
        self.action = action
        
    }
    
    
    init(symbol: Substring, _ action: @escaping (Substring) -> Void, _ NumberButtonProperties: (expression: Binding<Substring>, position: Binding<ScrollPosition>))
    {
        self.symbol = symbol
        self._expression = NumberButtonProperties.expression
        self._position = NumberButtonProperties.position
        self.action = action
    }
    
}

struct ButtonGridPreview: PreviewProvider {
    
    @State static var position = ScrollPosition(edge: .trailing)
    
    @State static var expression: Substring = " 0"
    
    
    static var previews: some View {
        ButtonGrid(expression: $expression, position: $position)
    }
}
