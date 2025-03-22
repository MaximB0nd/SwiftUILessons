//
//  TextFrame.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 22.03.2025.
//

import SwiftUI

struct TextFrame: View {
    var body: some View {
        VStack (alignment: .leading){
            HStack{
                Image(systemName: "globe")
                Text("Max Bondarev Daniilovich")
                    .font(.ubuntu, size: 24)
            }.padding(.bottom, 10)
            
            Text("SwiftUI is a powerful framework for building user interfaces for macOS, iOS, watchOS, and tvOS. It provides a declarative syntax for creating UIKit-like views and layouts, and it integrates seamlessly with other Apple technologies such as Core Data and AppKit. If you’re new to SwiftUI, the documentation and sample code can help you get started quickly. It’s a great framework for building modern iOS apps, and it’s continuously evolving to support new features and technologies.")
                .font(.ubuntu, size: 18)
                .multilineTextAlignment(.leading)
                .lineLimit(10)
                .truncationMode(.head)
                .padding(.bottom, 20)
        
            
            HStack{
                Text("You can learn SwiftUI to get more exp!!!")
                    .minimumScaleFactor(0.5)
                    .border(.red, width: 1)
                    .frame(width: 200, height: 25)
            }
            
            VStack(spacing: 10){
                Text("Get in and learn. It is free! If you want to get more exp, you can visit to learn more. Good luck!")
                    .layoutPriority(1)
                Text("So cool! Try it yourself! You can visit to learn more.")
                    .layoutPriority(1)
                Text("You can visit to learn more! Good luck! So cool! Try it yourself! You can visit to learn more! Good luck! So cool! Try it yourself! You can visit to learn more!")
            }.frame(maxWidth: 300, maxHeight:150)
        }
        .padding(20)
        .border(.blue, width: 2)
        .padding(20)
        
    }
}

#Preview {
    TextFrame()
}
