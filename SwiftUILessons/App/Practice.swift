//
//  Practice.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 23.03.2025.
//

import SwiftUI

struct PracticeView: View {
    var body: some View {
        VStack{
            
            HStack(spacing: 0){
                Rectangle().fill(.clear).frame(maxWidth: .infinity)
                
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
                
                Image(systemName: "calendar.circle")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .padding(.trailing, 16)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            .frame(height: 56)
            VStack(alignment: .trailing, spacing: 0){
                HStack(spacing: 0){
                    Text("235 cal left")
                        .font(FontBuilder.h2.font)
                        .lineSpacing(FontBuilder.h2.lineSpacing)
                        .padding(.vertical,FontBuilder.h2.verticalPadding)
                        .padding([.trailing], 10)
                    Image(systemName: "chevron.up")
                    Spacer()
                    Text("Add Food")
                        .foregroundColor(.white)
                        .font(FontBuilder.smallButtonText.font)
                        .lineSpacing(FontBuilder.smallButtonText.lineSpacing)
                        .padding(.vertical,FontBuilder.smallButtonText.verticalPadding)
                        .padding(EdgeInsets(top: 8, leading: 14, bottom: 8, trailing: 14))
                        .background(Color(.Accent))
                        .cornerRadius(10)
                }.padding([.leading, .trailing, .top], 20)
                VStack(alignment: .trailing, spacing: 0){
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
                    .frame(maxWidth: 217)
                }
                .padding(EdgeInsets(top: 16, leading: 20, bottom: 0, trailing: 20))
            }
            .frame(maxWidth: .infinity)
            .background(.white)
            //.cornerRadius(20)
            .clipShape(RoundCorner(radius: 20, corners: [.topLeft, .topRight]))
            .padding(EdgeInsets(top: 20, leading: 16, bottom: 0, trailing: 16))
            
            
            
            Spacer()
            
        }.frame(maxWidth: .infinity)
            .background(Color.init(.BgLight))
        
        
        
        
    }
}

#Preview {
    PracticeView()
}
