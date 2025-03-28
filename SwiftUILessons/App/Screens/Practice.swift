//
//  Practice.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 23.03.2025.
//



import SwiftUI

struct PracticeView: View {
    var body: some View {
        VStack(spacing: 0){
            VStack(spacing: 0){
                VStack(spacing: 0){
                    
                    NavigationBar()
                    
                    CaloriesInfo()
                    
                }.frame(maxWidth: .infinity)
                    .background(Color.init(.BgLight))
                
            
                FoodList()

                Spacer()
                
                TabBar()
                
            }.ignoresSafeArea(.container, edges: .bottom)
        }
    }
}

#Preview {
    PracticeView()
}



