//
//  FramesAlignment.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 19.03.2025.
//

import SwiftUI

struct FrameAlignment: View {
    
    var body: some View {
        
        ZStack {
            Text("topLeading")
                .frame(width: 300, height: 300, alignment: .topLeading)
                .border(.blue)
            Text("top")
                .frame(width: 300, height: 300, alignment: .top)
            Text("topTrailing")
                .frame(width: 300, height: 300, alignment: .topTrailing)
            Text("center")
                .frame(width: 300, height: 300, alignment: .center)
            Text("leading")
                .frame(width: 300, height: 300, alignment: .leading)
            Text("trailing")
                .frame(width: 300, height: 300, alignment: .trailing)
            Text("bottom")
                .frame(width: 300, height: 300, alignment: .centerFirstTextBaseline)
            Text("botLeading\nUnder")
                .frame(width: 300, height: 300, alignment: .leadingFirstTextBaseline)
            Text("botTrailing\nUpper")
                .frame(width: 300, height: 300, alignment: .trailingLastTextBaseline)
            
        }
        Text("Hello")
            .border(.blue)
            .frame(width: 100, height: 100, alignment: .leading)
            .border(.red)
    }
}

#Preview {
    FrameAlignment()
}
