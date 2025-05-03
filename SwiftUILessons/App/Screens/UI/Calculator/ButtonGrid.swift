//
//  ButtonGrid.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 17.04.2025.
//

import SwiftUI


struct ButtonGrid: View {
    
    @Binding var expression: [Substring]
    @Binding var actions: [Action]
    @Binding var position: ScrollPosition
    
    var body: some View {
        
        let NumberButtonProperties = (expression: $expression, actions: $actions, position: $position)
        
        let numberAction: (Substring) -> Void = { symbol in
            if actions.count < expression.count {
                
                if expression[expression.count-1].first == "0" || expression[expression.count-1].contains("-0") {
                    expression[expression.count-1] = "\(expression[expression.count-1].contains("-0") ? "-" : "")\(symbol)"
                    return
                }
                
                expression[expression.count-1] += symbol
                return
            }
            expression.append(symbol)
            
            
        }
        
        let deleteAction: (Substring) -> Void = { a in
            if actions.count < expression.count {
                expression[expression.count-1].removeLast()
                if expression[expression.count-1].isEmpty {
                    if expression.count == 1 {
                        expression[0] = "0"
                    }
                    else {
                        expression.removeLast()
                    }
                }
                return
            }
            actions.removeLast()
        }
        
        let plusSlashMinusAction: (Substring) -> Void = { a in
            if actions.count < expression.count {
                if expression[expression.count-1].first == "-" {
                    expression[expression.count-1].removeFirst(1)
                }
                else {
                    expression[expression.count-1] = "-" + expression[expression.count-1]
                }
                return
            }
            expression.append("-0")
        }
        
        let actionAction: (Substring) -> Void = { symbol in
            if actions.count < expression.count {
                
                
            }
            
            actions[actions.count-1]
        }
        
    
        
        Grid(horizontalSpacing: 10, verticalSpacing: 10) {
            
            
            GridRow {
                ButtonGridView(act: nil, path: "delete.backward", deleteAction, NumberButtonProperties) .buttonStyle(CalculatorButtonStyle())
                
                ButtonGridView(act: nil ,path: "plus.forwardslash.minus", plusSlashMinusAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                
                
                ButtonGridView(symbol: "1", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                
                ButtonGridView(act: .divide, path: "divide", actionAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
               
            }
            GridRow {
                ButtonGridView(symbol: "7", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonGridView(symbol: "8", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonGridView(symbol: "9", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonGridView(act: .multiply, path: "multiply", actionAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
            }
            GridRow {
                ButtonGridView(symbol: "4", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonGridView(symbol: "5", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonGridView(symbol: "6", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonGridView(act: .minus, path: "minus", actionAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
            }
            GridRow {
                ButtonGridView(symbol: "1", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonGridView(symbol: "2", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonGridView(symbol: "3", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonGridView(act: .plus ,path: "plus", actionAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
            }
            GridRow {
                ButtonGridView(symbol: "0", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonGridView(symbol: "0", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonGridView(symbol: "0", numberAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
                ButtonGridView(act: nil ,path: "equal",actionAction, NumberButtonProperties).buttonStyle(CalculatorButtonStyle())
            }
        }.padding(10)
    }
    
    
}

struct ButtonGridView: View {
    
    var symbol: Substring = ""
    var imageName: String = ""
    let action: (Substring) -> Void
    
    @Binding var expression: [Substring]
    @Binding var position: ScrollPosition
    @Binding var actions: [Action]
    
    let act: Action?
    
    var body: some View {
        Button {
            position.scrollTo(edge: .leading)
            if let act = act {
                action(Substring(act.rawValue))
            }
            else {
                action(symbol)
            }
            
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
    
    init (act: Action?, path: String, _ action: @escaping (Substring) -> Void, _ NumberButtonProperties: (expression: Binding<[Substring]>, actions: Binding<[Action]>, position: Binding<ScrollPosition>))
    {
        imageName = path
        self.act = act
        self._expression = NumberButtonProperties.expression
        self._position = NumberButtonProperties.position
        self.action = action
        self._actions = NumberButtonProperties.actions
        
    }
    
    
    init(symbol: Substring, _ action: @escaping (Substring) -> Void, _ NumberButtonProperties: (expression: Binding<[Substring]>, actions: Binding<[Action]>, position: Binding<ScrollPosition>))
    {
        self.symbol = symbol
        self._expression = NumberButtonProperties.expression
        self._position = NumberButtonProperties.position
        self.action = action
        self._actions = NumberButtonProperties.actions
        self.act = nil
    }
    
}

struct ButtonGridPreview: PreviewProvider {
    
    @State static var position = ScrollPosition(edge: .trailing)
    @State static var actions: [Action] = []
    @State static var expression: [Substring] = ["0"]
    
    
    static var previews: some View {
        ButtonGrid(expression: $expression, actions: $actions, position: $position)
    }
}
