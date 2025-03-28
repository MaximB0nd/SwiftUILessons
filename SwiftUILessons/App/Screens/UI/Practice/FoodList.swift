//
//  FoodList.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 28.03.2025.
//

import SwiftUI

struct FoodList: View {
    var body: some View {
        VStack(spacing: 0){
            
            FoodListItem(text: "Fried eggs with ham, 2 eggs", calValue: 235)
            FoodListItem(text: "Apple Juice, 200 ml", calValue: 145)
            FoodListItem(text: "Oranges, 3 ones", calValue: 52)
            FoodListItem(text: "Cooked chicken breast, 200 g.", calValue: 165)
            FoodListItem(text: "Whole wheat bread, 100 g.", calValue: 95)
            
            Divider()
        }
    }
}

private struct FoodListItem: View {
    var text: String
    var calValue: Int
    
    var body: some View {
        Divider()
        
        VStack(spacing: 0) {
            HStack(spacing: 0) {
                Text(text)
                    .lineLimit(1)
                    .font(FontBuilder.boddyText.font)
                    .lineSpacing(FontBuilder.boddyText.lineSpacing)
                    .padding([.vertical], FontBuilder.boddyText.verticalPadding)
                    .padding(.leading, 20)
                Spacer()
                Text("\(calValue) cal")
                    .lineLimit(1)
                    .font(FontBuilder.boddyText.font)
                    .lineSpacing(FontBuilder.boddyText.lineSpacing)
                    .padding(.vertical, FontBuilder.boddyText.verticalPadding)
                    .padding(.trailing, 10)
                    .layoutPriority(1)
                
                Image(systemName: "ellipsis")
                    .foregroundColor(.gray)
                    .padding(.trailing, 10)
            }
            .frame(height: 60)
        }.background(.white)
            .frame(maxWidth: .infinity)
    }
}

#Preview {
    FoodList()
}
