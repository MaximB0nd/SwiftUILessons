//
//  NavigationBar.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 28.03.2025.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        HStack(spacing: 0){
            Rectangle().fill(.clear).frame(maxWidth: .infinity)
            
            NavigationBarTitle()
            NavigationBarCalendar()
            
        }
        .frame(height: 56)
    }
}

#Preview {
    NavigationBar()
}


private struct NavigationBarTitle: View {
    var body: some View {
        VStack(spacing: 0){
            Text("Today")
                .font(FontBuilder.h2)
                .lineSpacing(FontBuilder.h2.lineSpacing)
            
            Text("Monday, march 2")
                .font(FontBuilder.title)
                .lineSpacing(FontBuilder.title.lineSpacing)
                .offset(y: -2)
        }
        .frame(maxWidth: .infinity, maxHeight: 40)
    }
}

private struct NavigationBarCalendar: View {
    var body: some View {
        Image(systemName: "calendar.circle")
            .resizable()
            .frame(width: 30, height: 30)
            .padding(.trailing, 16)
            .frame(maxWidth: .infinity, alignment: .trailing)
    }
}
