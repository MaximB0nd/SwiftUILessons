//
//  Practice.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 23.03.2025.
//



import SwiftUI

struct PracticeView: View {
    var body: some View {
        VStack(spacing: 0){
            VStack(spacing: 0){
                VStack(spacing: 0){
                    
                    NavigationBar()
                    
                    CaloriesInfo()
                    
                    
                }.frame(maxWidth: .infinity)
                    .background(Color.init(.BgLight))
                
            
                FoodList()

                Spacer()
                
                TabBar()
                
            }.ignoresSafeArea(.container, edges: .bottom)
        }
    }
}

#Preview {
    PracticeView()
}



struct View1: View {
    @State var clickCount = 0

    var body: some View {
        VStack {
            Button("Click me") {
                clickCount += 1
            }
            Text("count #1: \(clickCount)")
            View2(clickCount: clickCount)
        }
    }
}

struct View2: View {
    @State var clickCount = 0

    var body: some View {
        Text("count #2: \(clickCount)")
    }
}
