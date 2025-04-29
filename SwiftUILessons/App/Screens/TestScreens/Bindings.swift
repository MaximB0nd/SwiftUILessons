//
//  Bindings.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 29.04.2025.
//

import SwiftUI

struct BindingsView: View {
    
    @State var number: Int = 0
    
    var body: some View {
        VStack (spacing: 0){
            
            Text("\(number)")
                .font(.ubuntu, size: 50)
            
            plusButtonView(number: $number)
                .buttonStyle(plusButtonStyle())
        }
    }
}

struct plusButtonView: View {
    
    @Binding var number: Int
    
    var body: some View {
        Button {
            number += 1
        } label: {
            Image(systemName: "plus.app.fill")
                .resizable()
                .frame(width: 50, height: 50)
        }
    }
}


struct preview: PreviewProvider {
    static var previews: some View {
        BindingsView()
    }
}
