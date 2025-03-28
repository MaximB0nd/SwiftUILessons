//
//  TabBar.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 28.03.2025.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        HStack (spacing: 0){
            
            TabBarButton(text: "FOOD DIARY", iconPath: "pencil.and.list.clipboard", backgroundColor: .white, foregroundColor: .black)
            TabBarButton(text: "STATISTIKS", iconPath: "chart.bar.xaxis.ascending")
                .clipShape(RoundCorner(radius: 20, corners: .topLeft))
            TabBarButton(text: "PROFILE", iconPath: "person.and.background.striped.horizontal")
        }
    }
}

#Preview {
    VStack{
        Spacer()
        TabBar()
    }.ignoresSafeArea(.container, edges: .bottom)
}

private struct TabBarButton: View {
    var text: String
    var iconPath: String
    var backgroundColor: Color = .offButton
    var foregroundColor: Color = .white
    var body: some View {
        VStack(spacing: 2){
            Image(systemName: iconPath)
                .resizable()
                .foregroundColor(foregroundColor)
                .frame(width: 20, height: 20)
                
            Text(text)
                .font(FontBuilder.bottomBarText.font)
                .lineSpacing(FontBuilder.bottomBarText.lineSpacing)
                .padding(.vertical, FontBuilder.bottomBarText.verticalPadding)
                .foregroundColor(foregroundColor)
        }.frame(maxWidth: .infinity, minHeight: 56, maxHeight: 56)
            .background(backgroundColor)
            
    }
}
