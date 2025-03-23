//
//  PaddingOffsetSafeAreaInSet.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 23.03.2025.
//

import SwiftUI

struct PaddingOffset: View {
    var body: some View {
        Rectangle()
            .fill(.red)
            .frame(width: 100, height: 100)
            //.padding(EdgeInsets(top: 40, leading: 0, bottom: 10, trailing: 20))
            .padding([.top, .trailing], 20)
            .border(.black, width: 2)
        
        HStack{
            Text("Like")
                //.padding(.trailing, 20)
            Image(systemName: "heart.fill")
                .offset(x: 20, y:-5)
                //.padding(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 0))
            Text("Like")
                
        }
    }
}

#Preview {
    PaddingOffset()
}
