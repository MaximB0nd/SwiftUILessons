//
//  ButtonGrid.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 17.04.2025.
//

import SwiftUI


struct ButtonGrid: View {
    
    @Binding var expression: String
    @Binding var position: ScrollPosition
    
    var body: some View {
        
        let NumberButtonProperties = (expression: $expression, position: $position)
        
        let numberAction: (String) -> Void = { symbol in
            
            
            
        }
        
        let deleteAction: (String) -> Void = { a in
            
        }
        
        let plusSlashMinusAction: (String) -> Void = { a in
        }
        
        let actionAction: (String) -> Void = { symbol in
            
        }
        
    
        
        Grid(horizontalSpacing: 10, verticalSpacing: 10) {
            
            
            GridRow {
                ButtonNumberView(path: "delete.backward", deleteAction, NumberButtonProperties) .buttonStyle(CalculatorButtonStyle())
                
                ButtonNumberView(path: "plus.forwardslash.minus", plusSlashMinusAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                
                
                ButtonNumberView(symbol: "1", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonNumberView(path: "divide", actionAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
               
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
    
    @Binding var expression: String
    @Binding var position: ScrollPosition
    
    
    var imageName: String = ""
    let action: (String) -> Void
    
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
    
    init (path: String, _ action: @escaping (String) -> Void, _ NumberButtonProperties: (expression: Binding<String>, position: Binding<ScrollPosition>))
    {
        imageName = path
        self._expression = NumberButtonProperties.expression
        self._position = NumberButtonProperties.position
        self.action = action
        
    }
    
    
    init( symbol: String, _ action: @escaping (String) -> Void, _ NumberButtonProperties: (expression: Binding<String>, position: Binding<ScrollPosition>))
    {
        self.symbol = symbol
        self._expression = NumberButtonProperties.expression
        self._position = NumberButtonProperties.position
        self.action = action
    }
    
}

struct ButtonGridPreview: PreviewProvider {
    
    @State static var position = ScrollPosition(edge: .trailing)
    
    @State static var expression: String = ""
    
    
    static var previews: some View {
        ButtonGrid(expression: $expression, position: $position)
    }
}
