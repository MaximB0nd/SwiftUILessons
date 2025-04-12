//
//  File.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 28.03.2025.
//

import SwiftUI

struct CaloriesInfo: View {
    var body: some View {
        VStack(alignment: .trailing, spacing: 0){
            
            CaloriesInfoTitle()
            
            PacmanCalBar()
            
            
        }
        .frame(maxWidth: .infinity)
        .background(.white)
        //.cornerRadius(20)
        .clipShape(RoundCorner(radius: 20, corners: [.topLeft, .topRight]))
        .padding(EdgeInsets(top: 20, leading: 16, bottom: 0, trailing: 16))
    }
}

private struct ShowCalButton: View {
    var body: some View {
        HStack(){
            Text("235 cal left")
             
                .font(FontBuilder.h2.font)
                .lineSpacing(FontBuilder.h2.lineSpacing)
                .padding(.vertical,FontBuilder.h2.verticalPadding)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 10, trailing: 0))
            Image(systemName: "chevron.up")
        }
    }
}


private struct AddFoodButton: View {
    var body: some View {
        Text("Добавить блюдо")
            .foregroundColor(.white)
            .font(FontBuilder.smallButtonText.font)
            .lineSpacing(FontBuilder.smallButtonText.lineSpacing)
            .padding(.vertical,FontBuilder.smallButtonText.verticalPadding)
            .padding(EdgeInsets(top: 8, leading: 14, bottom: 8, trailing: 14))
            .background(Color(.Accent))
            .cornerRadius(10)
    }
}

private struct CaloriesInfoTitle: View {
    var body: some View {
        HStack(spacing: 0){
            
            ShowCalButton()
            
            Spacer().frame(maxWidth: 100).layoutPriority(-1)
            
            AddFoodButton()
            
            Spacer()
            
            
        }.padding([.leading, .trailing, .top], 20)
    }
}

private struct PacmanCalBar: View {
    var body: some View{
        VStack(alignment: .trailing, spacing: 0){
            Image("Pacman")
                .padding(.bottom, 8)
            HStack(spacing: 0){
                Text("1765")
                    .font(FontBuilder.boddyText.font)
                    .lineSpacing(FontBuilder.boddyText.lineSpacing)
                    .padding(.vertical, FontBuilder.boddyText.verticalPadding)
                    .padding(.leading, 15)
                Spacer()
                Text("200 cal")
                    .font(FontBuilder.boddyText.font)
                    .lineSpacing(FontBuilder.boddyText.lineSpacing)
                    .padding(.vertical, FontBuilder.boddyText.verticalPadding)
            }
            .frame(maxWidth: 240)
        }
        .padding(EdgeInsets(top: 16, leading: 20, bottom: 14, trailing: 20))
    }
    
}

#Preview {
    ZStack{
        Rectangle()
        CaloriesInfo()
    }
    
}
