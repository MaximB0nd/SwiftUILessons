//
//  Grid.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 17.04.2025.
//

import SwiftUI

struct GridView: View {
    var body: some View {
        Grid(alignment: .trailing, horizontalSpacing: 10, verticalSpacing: 10){
            GridRow {
                Text("Lorem ipsum").background(.red)
                Text("dolor sit amet, consectetur adipiscing elit").background(.red)
                Text("Donec tempor, ante dictum scelerisque blandit").background(.red)
            }
            GridRow {
                Text("Lorem ipsum")
                    .gridCellAnchor(.topTrailing)
                    .gridCellColumns(2)
                    .background(.red)
                Text("Donecsdhfksdjfhkjsdhjfhjksdhfjkshdjkfhjksskdjfhskjdfhkjsdfh").background(.red)
                
            }
            GridRow {
                Text("Lorem ipsum amet").background(.red)
                Text("dolor sit amet, ").background(.red)
                Text("Donec tempor, ante").background(.red)
            }
        }
    }
}

#Preview {
    GridView()
}
