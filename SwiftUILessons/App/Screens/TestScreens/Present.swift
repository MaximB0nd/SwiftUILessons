//
//  Present.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 15.05.2025.
//

import SwiftUI

struct PresentView: View {
    @State private var isPresentedSecScr = false
    @State private var movie: Movie?
    var body: some View {
//        Button("Open second screen") {
//            isPresentedSecScr = true
//        }
//        .sheet(isPresented: $isPresentedSecScr) {
//            SecondScreen()
//        }
        
        
        Button("Matrica") {
            movie = Movie(id: 1, title: "Matrica")
        }
        Button("Pogoda") {
            movie = Movie(id: 2, title: "Pogoda")
        }.sheet(item: $movie, content: { movie in
            Text(movie.title)
                .presentationCornerRadius(0)
                .presentationDragIndicator(.visible)
                .presentationDetents([.medium, .large])
        })
            
        
        Button("Open new screen") {
            isPresentedSecScr = true
        }
        .fullScreenCover(isPresented: $isPresentedSecScr, content: {
            //SecondScreen(isOpened: $isPresentedSecScr)
            SecondScreen(close: {isPresentedSecScr = false})
                
        })
    }
}

struct SecondScreen: View {
    //@Binding var isOpened: Bool
    let close: () -> Void
    var body: some View {
        Text("Second screen")
        Button("Close", action: close)
    }
}

struct Movie: Identifiable {
    var id: Int
    var title: String
}

#Preview {
    PresentView()
}
