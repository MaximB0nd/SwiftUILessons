//
//  TextField.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 14.05.2025.
//

import SwiftUI

struct TextFields: View {
    @State private var text = ""
    var body: some View {
        VStack {
            TextField("Enter your name", text: .constant(""))
            TextField("Enter your email", text: .constant(""))
            TextField("Цитата", text: $text, prompt: Text("Цитата"), axis: .vertical)
                .onSubmit{print(text)}
            TextField("Число", value: .constant(0), format: .number)
            
            SecureField("qwe", text: $text)
        }
    }
}


#Preview {
    TextFields()
}
