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
            }
            GridRow {
            
                
            }
            GridRow {
                
            }
            GridRow {
                
            }
            GridRow {
                
            }
        }
    }
    
    
    
}

struct ButtonView: View {
    
    let symbol: String
    
    var body: some View {
        Button(action: {},
            label: {
                Label("\(symbol)", systemImage: "bolt.fill")
                    .labelStyle(.titleOnly)
            }
        )
        
    }
    
    
    
    
    
    
}

