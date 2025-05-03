//
//  ActionButton.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 03.05.2025.
//

import SwiftUI

struct ActionButton: View {
    let action: Action
    
    @Binding var expression: [Substring]
    @Binding var position: ScrollPosition
    @Binding var actions: [Action]
    
    var body: some View {
        Button {
            position.scrollTo(edge: .leading)
            if actions.count < expression.count {
                actions.append(action)
                return
            }
            actions[actions.count-1] = action
            
        }
        
        label : {
            ButtonLabel(path: action.rawValue)
        }
    }
    
    init (action: Action,
          path: String = "",
          _ NumberButtonProperties: (expression: Binding<[Substring]>, actions: Binding<[Action]>, position: Binding<ScrollPosition>)) {
        
        self._actions = NumberButtonProperties.actions
        self._position = NumberButtonProperties.position
        self._expression = NumberButtonProperties.expression
        
       
        self.action = action
        
    }
          
}


