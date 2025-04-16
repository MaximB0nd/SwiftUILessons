//
//  GeometryReader.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 16.04.2025.
//

import SwiftUI

struct GeometryReaderView: View {
    var body: some View {
        VStack (spacing: 10) {
            
            HStack (spacing: 0) {
                Rectangle().fill(.red)
                Rectangle().fill(.green)
            }
            
            GeometryReader { proxy in
                let width = proxy.size.width
                HStack (spacing: 0){
                    Rectangle().fill(.red).frame(width: width * 0.6)
                    Rectangle().fill(.green)
                }
            }
            
            
        }
    }
}


#Preview {
    GeometryReaderView()
}
