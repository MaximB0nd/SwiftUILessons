//
//  ScrollViewMySelf.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 11.04.2025.
//

import SwiftUI

struct ScrollViewMySelf: View {
    
    @State var offset = 0.0
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Hello 1")
            Text("Hello 2")
            Text("Hello 3")
            Text("Hello 4")
            Text("Hello 5")
            Text("Hello 6")
            Text("Hello 7")
            Text("Hello 8")
            Text("Hello 9")
            Text("Hello 10")
        }.font(Font.custom("Arial", size: 30))
            .frame(width: 300, height: 300)
            .offset(y: offset)
            .border(.blue, width: 10)
            .clipped()
            .gesture( DragGesture().onChanged { offset = $0.location.y } )
            
        
    }
}

#Preview {
    ScrollViewMySelf()
}
