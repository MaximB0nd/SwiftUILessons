//
//  Button.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 25.04.2025.
//

import SwiftUI

struct ButtonsView: View {
    var body: some View {
        Button(
            "Tap me",
            action: {print("tapeed")}
        )
    }
}

struct Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView()
    }
}
