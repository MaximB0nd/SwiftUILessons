//
//  FlexibleButton.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 18.06.2025.
//

import SwiftUI

struct FlexibleButton: View {
    var body: some View {
        
        SquishiButton {} label: {
            Image(systemName: "heart")
                .resizable()
                .frame(width: 100, height: 100)
        }
    }
}

struct SquishiButton<Label: View>: View {
    var action: () -> Void
    var label: Label
    
    init(action: @escaping () -> Void,
         @ViewBuilder label: () -> Label) {
        self.action = action
        self.label = label()
    }
    
    var body: some View {
        
        label
            .modifier(
            SquishiModifier(scale: 0.8, action: action)
        )
    }
}

struct SquishiModifier : ViewModifier {
    
    @State var isPressed = false
    
    let action: () -> Void
    let scale: CGFloat
    
    init(scale: CGFloat, action: @escaping () -> Void) {
        self.action = action
        self.scale = scale
    }
    
    func body(content: Content) -> some View {
        content
            .scaleEffect(isPressed ? scale : 1)
            ._onButtonGesture { pressed in
                withAnimation(.interactiveSpring(
                    duration: 0.5,
                    extraBounce: 0.5,
                    blendDuration: 0.5)){
                    isPressed = pressed
                }
            } perform: {
                action()
            }
    }
        
}

#Preview {
    FlexibleButton()
}
