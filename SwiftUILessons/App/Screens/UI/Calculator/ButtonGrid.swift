//
//  ButtonGrid.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 17.04.2025.
//

import SwiftUI

struct ButtonGrid: View {
    
    var body: some View {
        
        Grid(horizontalSpacing: 10, verticalSpacing: 10) {
            
            
            GridRow {
                ButtonView("AC", .black, .white)
                ButtonView("+-", .black, .white)
                ButtonView("%", .black, .white)
                ButtonView("/", .white, .orange)
               
            }
            GridRow {
                ButtonView("7", .white, .gray)
                ButtonView("8", .white, .gray)
                ButtonView("9", .white, .gray)
                ButtonView("Х", .white, .orange)
            }
            GridRow {
                ButtonView("4", .white, .gray)
                ButtonView("5", .white, .gray)
                ButtonView("6", .white, .gray)
                ButtonView("-", .white, .orange)
            }
            GridRow {
                ButtonView("1", .white, .gray)
                ButtonView("2", .white, .gray)
                ButtonView("3", .white, .gray)
                ButtonView("+", .white, .orange)
            }
            GridRow {
                ButtonView("0", .white, .gray)
                Text("")
                ButtonView(".", .white, .gray)
                ButtonView("=", .white, .gray)
            }
        }.fixedSize(horizontal: false, vertical: true)
    }
    
    
}

struct ButtonView: View {
    
    let symbol: String
    let fg: Color
    let bg: Color
    
    
    var body: some View {
        Text(symbol)
            .foregroundColor(fg)
            .font(.system(size: 60))
            .minimumScaleFactor(0.2)
            .padding(20)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .aspectRatio(1, contentMode: .fit)
            .background(bg)
            .cornerRadius(.infinity)
    }
    
    init(_ symbol: String = "0", _ fg: Color = .white, _ bg: Color = .black) {
        self.symbol = symbol
        self.bg = bg
        self.fg = fg
    }
}

#Preview {
    ButtonGrid()
}
