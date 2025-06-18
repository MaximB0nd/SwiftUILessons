//
//  DragCircle.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 17.06.2025.
//

import SwiftUI

struct DragCircle: View {
    
    @State private var position: CGPoint = .init(x: 50, y: 50)
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .position(position)
            .gesture(
                DragGesture()
                    .onEnded {_ in 
                        position = .init(x: 50, y: 50)
                    }
                    .onChanged { value in
                        position = value.location
                    }
            )
    }
}

#Preview {
    DragCircle()
}
