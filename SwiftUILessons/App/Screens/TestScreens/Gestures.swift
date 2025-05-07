//
//  Gestures.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 07.05.2025.
//

import SwiftUI

struct GesturesView: View {
    @State var isBlue = true
    @State var text1 = ""
    @State var text2 = ""
    @State var text3 = ""
    
    var body: some View {
        VStack {
            TextButton()
                .onTapGesture (count: 5) {
                    isBlue = !isBlue
                }
            
            TextButton()
                .onTapGesture (coordinateSpace: .global, perform: {
                    point in
                    text1 = "\(point)"
                })
            
            Text(text1)
            
            TextButton()
                .onLongPressGesture(minimumDuration: 2, perform: {
                    text2 = "Long press"
                }, onPressingChanged: { state in
                    text3 = state ? "Pressing" : "Released"
                })
                
            
            Text(text2)
                .foregroundStyle(isBlue ? .blue : .red)
            
            Text(text3)
            
        }
        
    }
}

struct Gestures_Previews: PreviewProvider {
    static var previews: some View {
        GesturesView()
    }
}

struct TextButton : View {
    var body: some View {
        Text("Tap me")
            .padding()
            .background(.blue)
            .clipShape(.buttonBorder)
    }
}
