//
//  States.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 29.04.2025.
//

import SwiftUI

class TextNumber {
    var number = 0
}

struct StatesView: View {
    
    @State var number = 0
    let number2 = TextNumber()
    
    var body: some View {
        
        VStack (spacing: 0){
            
            Text("\(number)")
                .font(.ubuntu, size: 50)
            
            Button {
                number += 1
            } label: {
                Image(systemName: "plus.app.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
            }.buttonStyle(plusButtonStyle())
            
            Spacer().frame(height: 200)
            
            Text("\(number2.number)")
                .font(.ubuntu, size: 50)
            
            Button {
                number2.number += 1
            } label: {
                Image(systemName: "plus.app.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
            }.buttonStyle(plusButtonStyle())
        }
    }
}



struct plusButtonView: View {
    var body: some View {
        Button {} label: {
            Image(systemName: "plus.app.fill")
                .resizable()
                .frame(width: 50, height: 50)
        }
    }
}


struct plusButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.red)
            .padding(10)
            .background(.clear)
            .cornerRadius(5)
            .opacity(configuration.isPressed ? 0.5 : 1)
            
            
    }
}


#Preview {
    StatesView()
}
