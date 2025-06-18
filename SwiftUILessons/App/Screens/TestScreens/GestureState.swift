//
//  GestureState.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 18.06.2025.
//

import SwiftUI

struct GestureStates: View {
    
    @GestureState var translation: CGSize = .zero
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .offset(translation)
            .gesture(gesture)
    }
    
    var gesture: some Gesture {
        DragGesture()
            .updating($translation) { value, state, transaction in
            state = value.translation
        }
    }
}

#Preview {
    GestureStates()
}
