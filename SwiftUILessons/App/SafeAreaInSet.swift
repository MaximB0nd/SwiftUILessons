//
//  SafeAreaInSet.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 23.03.2025.
//

import SwiftUI

struct SafeAreaInSetView: View {
    var body: some View {
        Rectangle().fill(.red)
            .ignoresSafeArea(.container, edges: [.top])
    }
}

#Preview {
    SafeAreaInSetView()
}
