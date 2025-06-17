//
//  ObservedObjects.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 17.06.2025.
//

import SwiftUI

final class SongManager: ObservableObject {
    
    private var songs: [String] = ["Song 1", "qwe 2", "Song 3", "Song 4", "Song 5", "qwe 6"]
    
    @Published private var currentSongIndex = 0
    
    var currentSong: String {
        songs[abs(currentSongIndex)%songs.count]
    }
    
    func nextSong() {
        currentSongIndex += 1
    }
    
    func previousSong() {
        currentSongIndex -= 1
    }
}


struct ObservedObjects: View {
    
    @StateObject var songManager = SongManager()
//    @ObservedObject var songManager = SongManager()
    
    
    var body: some View {
        Text(songManager.currentSong)
        Button("Next") {
            songManager.nextSong()
        }
        Button("Previos") {
            songManager.previousSong()
        }
    }
}

#Preview {
    ObservedObjects()
}
