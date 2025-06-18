//
//  AligmentGuide.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 18.06.2025.
//

import SwiftUI

struct AligmentGuide: View {
    var body: some View {
        content
            .badge { badge }
    }
    
    var content: some View {
        Rectangle()
            .fill(.blue)
            .frame(width: 100, height: 100)
    }
    
    var badge: some View {
        Text("+1")
            .font(.caption)
            .foregroundColor(.white)
            .padding()
            .background(Color.red)
            .clipShape(Circle())
    }
}

extension View {
    public func badge<B: View>(@ViewBuilder badge: () -> B) -> some View {
        overlay(alignment: .topTrailing) {
            badge()
                 
        }
    }
}

#Preview {
    AligmentGuide()
}
