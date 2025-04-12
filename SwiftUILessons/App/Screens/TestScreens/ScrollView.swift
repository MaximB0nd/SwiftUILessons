//
//  ScrollView.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 11.04.2025.
//

import SwiftUI

struct ScrollerView: View{
    var body: some View{
        ScrollView {
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
            }.font(Font.custom("Arial", size: 42))
        }
        .frame(width: 300, height: 300)
        
        
        ScrollView ([.vertical, .horizontal], showsIndicators: true) {
            VStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 1000, height: 200)
                
                Text("SwiftUI is awesome but it is also very hard to learn 😅 ! ! ! ! If you wamsdfsdfmdkgkkbkckcbmbmcmcmslksldllddlbkb")
            }
        }.scrollBounceBehavior(.always, axes: .vertical)
        .clipped()
        .border(.green, width: 5)
        
        
    }
}

#Preview {
    ScrollerView()
}
