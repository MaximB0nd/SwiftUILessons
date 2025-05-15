//
//  Push.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 15.05.2025.
//

import SwiftUI

enum Screen: Hashable {
    case movie(String)
    case newScreen
}

struct PushView: View {
    
    @State var selectedScreen: [Screen] = [.movie("Wer")]
    
    var body: some View {
        NavigationStack (path: $selectedScreen){
            NavigationLink("Open link"){
                NewScreen()
            }
            NavigationLink {
                NewScreen()
            } label: {
                Image(systemName: "square.and.arrow.up")
                Text("weqw")
                
            }
            
            Divider().background(Color.red)

            
            NavigationLink("Matrica", value: Screen.movie("Matrica"))
            NavigationLink("Garri potter", value: Screen.movie("Garri potter"))
            NavigationLink("New screen", value: Screen.newScreen)
                .navigationDestination(for: Screen.self, destination: {screen in
                    switch screen {
                    case .movie(let title):
                        MoviePreview(closure: {
                            var a = Transaction()
                            a.disablesAnimations = true
                            withTransaction(a) {
                                selectedScreen.insert(.movie("Term"), at: 0)}
                        }, movie: title)
                            
                    case .newScreen:
                        NewScreen()
                        
                    }
                })
            
        }
    }
}

struct NewScreen: View {
    @Environment(\.dismiss) var close
    var body: some View {
        Text("New screen")
        Button("close") {
            close()
        }
        NavigationLink("Open me", value: Screen.newScreen)
    }
}

struct MoviePreview: View {
    let closure: () -> Void
    let movie: String
    var body: some View {
        Text("You are watching \(movie)")
        Button("add reclama", action: closure)
    }
    
}

#Preview {
    PushView()
}
