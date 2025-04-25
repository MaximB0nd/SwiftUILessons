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
                HStack {
                        
                    Text("TAP ME")
                    .font(.largeTitle)
                    Image(systemName: "lasso.badge.sparkles")
                    .resizable()
                    .aspectRatio(1, contentMode: .fill)
                }.frame(width: 200, height: 5)
                }
        }
    }
}

struct Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView()
    }
}
