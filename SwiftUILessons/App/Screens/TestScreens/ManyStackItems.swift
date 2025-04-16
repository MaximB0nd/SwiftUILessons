//
//  ManyStackItems.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 14.04.2025.
//

import SwiftUI

struct ManyStackItems: View {
    var body: some View {
        ScrollView {
            Group {
                Text("1")
                Text("2")
                Text("3")
                Text("4")
                Text("5")
                Text("6")
                Text("7")
                Text("8")
                Text("9")
                Text("10")
            }
            Text("11")
            
            Divider()
            
            ForEach(0...100, id: \.self) { id in
               itemView(id: id)
           }
        }
    }
}

struct itemView: View {
    let id: Int
    var body: some View {
        HStack {
            Text("Строка \(id)")
            Spacer()
            Image(systemName: "chevron.right")
        }.padding(EdgeInsets(top: 5, leading: 20, bottom: 5, trailing: 20))
        Divider()
    }
    
}

#Preview {
    ManyStackItems()
}
