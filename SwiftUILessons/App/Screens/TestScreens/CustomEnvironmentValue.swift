//
//  CustomEnvironmentValue.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 17.06.2025.
//

import SwiftUI

struct AppVersioEnvironmentKey: EnvironmentKey {
    static let defaultValue: Int = 1
}

extension EnvironmentValues {
    var appVersion: Int {
        get {
            self[AppVersioEnvironmentKey.self]
        }
        set {
            self[AppVersioEnvironmentKey.self] = newValue
        }
    }
}


struct CustomEnvironmentValue: View {
    
    @State var isPresented = false
    
    @Environment(\.appVersion) var appVersion
    
    var body: some View {
        Text("\(appVersion)")
        Button("Next vetsion") {
            isPresented = true
            print(appVersion)
        }.sheet(isPresented: $isPresented) {
            SomeSheet()
                .environment(\.appVersion, appVersion + 1)
        }
    }
}

struct SomeSheet: View {
    
    @Environment(\.appVersion) var appVersion
    
    var body: some View {
        VStack{
            Text("\(appVersion)")
            Button("Next vetsion") {
                print(appVersion)
            }
        }
    }
}

#Preview {
    CustomEnvironmentValue()
}
