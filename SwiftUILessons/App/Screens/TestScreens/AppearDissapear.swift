//
//  AppearDissapear.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 17.06.2025.
//

import Foundation
import SwiftUI

struct AppearDissapear: View {
    
    @State var appeared: Int = 0
    @State var dissapeared: Int = 0
    @State var isShowing: Bool = false
    
    var body: some View {
        VStack{
            if (isShowing) {
                Rectangle().fill(.red).frame(width: 100, height: 100)
                    .onAppear {
                        appeared +=  1
                    }
                    .onDisappear {
                        dissapeared += 1
                    }
            }
            Button(isShowing ? "Close" : "Open"){
                isShowing.toggle()
            }
            Text("Appeared: \(appeared)")
            Text("Dissappeared: \(dissapeared)")
        }

    }
}

#Preview {
    AppearDissapear()
}
