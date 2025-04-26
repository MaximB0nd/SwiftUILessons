//
//  Button.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 25.04.2025.
//

import SwiftUI

struct ButtonsView: View {
    var body: some View {
        VStack (spacing: 30) {
            Button(
                "Tap me",
                action: {print("tapeed")}
            )
            
            Button(
                "Tap me",
                role: .destructive,
                action: {print("tapeed")}
            )
            
            Button {
                    print("Меня нажали")
            } label: {
                HStack {
                    Rectangle()
                        .fill(.red)
                        .frame(width: 50, height: 50)
                    Text("Нажми меня")
                    Image(systemName: "person.crop.square.fill")
                }
            }
            
            Button(role: .cancel)
            {
                    print("Меня нажали")
                } label: {
                    HStack {
                        Rectangle().frame(width: 50, height: 50)
                        Text("Нажми меня")
                        Image(systemName: "person.crop.square.fill")
                    }
                }
            Button {}
            label: {
                
                HStack (spacing: 10){
                    
                    Text("TAP ME")
                        .font(.ubuntu, size: 30)
                    Image(systemName: "lasso.badge.sparkles")
                        .resizable()
                        .frame(width: 30, height: 30)
                }.fixedSize(horizontal: true, vertical: true)
                    .padding(5)
                    .background(Color.yellow)
                    .cornerRadius(10)
                        
            }.background(.white)
            
            ChangingButtonStyleView()
        }
    }
}

struct ChangingButtonStyleView: View {
    @State var isRed = true
    
    
    var body: some View {
        Button {isRed = !isRed} label: {
            Text("I am chainable")
                .padding()
                .background(isRed ? .red : .blue)
                .foregroundColor(.white)
                .cornerRadius(isRed ? 15 : 0)
        }
    }
}

struct Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView()
    }
}
