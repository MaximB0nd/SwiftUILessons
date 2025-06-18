//
//  Transactions.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 18.06.2025.
//

import SwiftUI

struct Transactions: View {
    
    @State var isLiked = false
    
    var body: some View {
        Button {
            isLiked.toggle()
        } label: {
            HStack(spacing: 2) {
                if isLiked {
                    LikedImage
                        .transition(isLiked ? .move(edge: .top) : .move(edge: .bottom))
                }
                else {
                    UnLikedImage
                        .transition(isLiked ? .move(edge: .bottom) : .move(edge: .top))
                        .transaction { transaction in
                            transaction.animation = .easeInOut(duration: 0.2)
                        }
                }
            }.animation(.bouncy, value: isLiked)
                .padding(7)
                .background(.white)
                .clipShape(Circle())
                .shadow(radius: 5)
        }
        
        
        
    }
    
    var LikedImage: some View {
        Image(systemName: "heart.fill")
            .resizable()
            .frame(width: 20, height: 20)
            .foregroundStyle(.red)
    }
    
    var UnLikedImage: some View {
        Image(systemName: "heart")
            .resizable()
            .frame(width: 20, height: 20)
            .foregroundStyle(.gray)
    }
}

#Preview {
    Transactions()
}
