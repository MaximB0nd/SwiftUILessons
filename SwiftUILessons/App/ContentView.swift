//
//  ContentView.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 16.03.2025.
//

import SwiftUI

struct ContentView: View {
    @State var side = 100.0
    
    var body: some View {
        var n: Int = 0
        
        ScrollView {
            Rectangle()
                .frame(width: 20, height: 20)
                .foregroundStyle(.red)
            Circle()
                .frame(width: 10, height: 10)
                .foregroundStyle(.blue)
            Divider()
                .background(.black)
            ProgressView()
            ProgressView(value: 19, total: 80)
                .padding(40)
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("\(n)")
                .foregroundStyle(.red)
            Button("Pick down", action: {
                n+=1
            })
            .foregroundStyle(.primary)
            .background(.green)
            .clipShape(.capsule)
            .frame(width: 100, height: 100)
            .background(.yellow)
            .clipShape(.buttonBorder)
            
            Image(systemName: "tree.fill")
                .background(.yellow)
                .padding(20)
                .border(.red)
                .frame(width: 120, height: 120)
                .border(.red, width: 10)
            
            Rectangle()
                .fill(Color.yellow)
                .frame(minWidth: 10, idealWidth: 100, maxWidth: 300, minHeight: 10, idealHeight: 100, maxHeight: 300, alignment: .trailing)
            
        }
        .padding()
//        Rectangle()
//            .frame(
//                maxWidth: 25,
//                maxHeight: 25)
//            .border(.green, width: 3)
//            .frame(maxWidth: side,
//                   maxHeight: side)
//            .border(.green, width: 3)
//            .frame(maxWidth: .infinity,
//                   maxHeight: .infinity)
//        
//        Slider(value: $side, in: 0...100, label: {Text("Side: \(side)")})
//        Text("\(side)")
    }
}

#Preview {
    ContentView()
}
