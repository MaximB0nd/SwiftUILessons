//
//  ContentView.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 16.03.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        var n: Int = 0
        VStack {
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
