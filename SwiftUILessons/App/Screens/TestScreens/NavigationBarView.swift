//
//  NavigationBar.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 15.05.2025.
//

import SwiftUI

struct NavigationBarView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("New window") {
                Text("new window")
                    .navigationTitle("NavigationBar")
                    .navigationBarTitleDisplayMode(.large)
            }
            
            NavigationLink("Some windiow"){
                Text("Some window")
                    .toolbar{
                        ToolbarItem(placement: .bottomBar, content: {Text("Some text")})
                        ToolbarItem(placement: .principal, content: {Text("Hello")})
                    }
            }
            .navigationTitle("Go back")
            .toolbarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal, content: {Text("First window")})
            }
            .toolbarBackground(.red, for: .navigationBar)
            
            
        
        }
    }
}

#Preview {
    NavigationBarView()
}
