//
//  ContentView.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 16.03.2025.
//

import SwiftUI

struct ContentView: View {
    var fff: String?
    var body: some View {
        var n: Int = 0
        
        List {
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
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("\(n)")
            Button("Pick down", action: {
                n+=1
          
                })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
