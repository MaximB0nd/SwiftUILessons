//
//  Stacks.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 19.03.2025.
//

import SwiftUI

struct StackView: View {
    var body: some View {
//        group - просто группирует несколько объектов и все свойства применяет к каждому
        
//        VStack - в столбик
//        ZStack - в одно место
//        HStack - в линию
        
        
        VStack{
            Text("HelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHello")
            Text("world")
        }.frame(width: 300, height: 50)
            .border(.red)
        
        VStack(alignment: .leading, spacing: 0){
            Rectangle().fill(.red).frame(width: 100, height: 10)
            Rectangle().fill(.blue).frame(width: 10, height: 100)
        }.border(.green)
        
        HStack(alignment: .bottom, spacing: 100){
            Rectangle().fill(.red).frame(width: 100, height: 10)
            Rectangle().fill(.blue).frame(width: 10, height: 100)
        }.border(.green)
        
        ZStack(alignment: .center){
            Rectangle().fill(.red).frame(width: 100, height: 10)
            Rectangle().fill(.blue).frame(width: 10, height: 100)
        }.border(.green)
        
    }
}

#Preview {
    StackView()
}
