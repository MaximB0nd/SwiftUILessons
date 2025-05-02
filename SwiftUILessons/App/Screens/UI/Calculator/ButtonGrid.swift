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
            if expression == "0" {
                expression = symbol
            }
            else {
                expression += symbol
            }
        }
        
        let deleteAction: (Substring) -> Void = { a in
            if expression.count > 1 {
                expression.removeLast()
            }
            else {
                expression = "0"
            }
        }
        
        let plusSlashMinusAction: (Substring) -> Void = { a in
//            expression = expression[expression.lastIndex(of: " ")!...] + (expression[expression.lastIndex(of: " ")!...][] == "-" ? "" : "-")
        }
        
        let actionAction: (Substring) -> Void = { symbol in
            if let _: Int = Int(String(expression[expression.lastIndex(of: " ")!...])) {
                expression += " \(symbol)"
            }
            else {
                expression.removeLast(2)
                expression += " \(symbol)"
            }
            
                
            
        }
        
    
        
        Grid(horizontalSpacing: 10, verticalSpacing: 10) {
            
            
            GridRow {
                ButtonNumberView(symbol: "+/-", path: "delete.backward", deleteAction, NumberButtonProperties) .buttonStyle(CalculatorButtonStyle())
                
                ButtonNumberView(symbol: "/",path: "plus.forwardslash.minus", plusSlashMinusAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                
                
                ButtonNumberView(symbol: "1", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                
                ButtonNumberView(symbol: "/", path: "divide", actionAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
               
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
    
    init (symbol: Substring, path: String, _ action: @escaping (Substring) -> Void, _ NumberButtonProperties: (expression: Binding<Substring>, position: Binding<ScrollPosition>))
    {
        imageName = path
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
    
    @State static var expression: Substring = " "
    
    
    static var previews: some View {
        ButtonGrid(expression: $expression, position: $position)
    }
}

extension Substring {
    subscript (_ from: Int, _ to: Int) -> Substring? {
        guard from >= 0, to >= from, to < count else { return nil }
        return self[index(startIndex, offsetBy: from)..<index(startIndex, offsetBy: to)]
    }
}
