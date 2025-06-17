//
//  TabBarView.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 15.05.2025.
//

import SwiftUI

enum Tab {
    case one
    case two
    case three
}

struct TabBarView: View {
    
    @State var selectedTab: Tab = .two
    
    var body: some View {
        TabView (selection: $selectedTab) {
            Screen1().tabItem {
                Text("One")
            }.tag(Tab.one)
            
            
            Screen2().tabItem {
                Text("Two")
            }.tag(Tab.two)
            Screen3().tabItem {
                Text("Three")
            }.tag(Tab.three)
            .badge("123")
            
        }
    }
}

#Preview {
    TabBarView()
}

struct Screen1: View {
    var body: some View {
        VStack{
            Text("Screen 1")
            Image(systemName: "square.and.arrow.up.badge.clock")
        }
    }
}

struct Screen2: View {
    var body: some View {
        VStack{
            Image(systemName: "square.and.arrow.up.badge.checkmark")
            Text("Screen 2")
        }
    }
}

struct Screen3: View {
    var body: some View {
        VStack{
            Image(systemName: "pencil.line")
            Text("Screen 3")
        }
    }
}

