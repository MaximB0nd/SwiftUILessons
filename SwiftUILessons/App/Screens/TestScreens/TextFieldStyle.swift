//
//  TextFieldStyle.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 14.05.2025.
//

import SwiftUI

struct TextFieldStyles: View {
    @State private var text = ""
    var body: some View {
        TextField("Enter your name", text: $text)
            .textFieldStyle(.plain)
            .padding(5)
            .border(Color.blue)
            .padding(25)
        
        TextField("Enter your name", text: $text)
            .textFieldStyle(.roundedBorder)
        
        TextField(text: $text, label: {Text("Enter your name").foregroundColor(.red)})
            .textInputAutocapitalization(.never)
            .autocorrectionDisabled()
    }
}

#Preview {
    TextFieldStyles()
}
