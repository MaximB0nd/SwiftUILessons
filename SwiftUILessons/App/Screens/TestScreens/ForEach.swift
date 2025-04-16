//
//  ForEach.swift
//  SwiftUILessons
//
//  Created by Максим Бондарев on 15.04.2025.
//

import SwiftUI

struct ForEachView: View {
    var numbers = [1, 6, 7, 8, 9, 13, 14, 20, 21, 27, 28]
    var months: [Month] = [
        Month(numDays: 31, name: "Январь"),
        Month(numDays: 28, name: "Февраль"),
        Month(numDays: 31, name: "Март"),
        Month(numDays: 30, name: "Апрель"),
        Month(numDays: 31, name: "Май"),
        Month(numDays: 30, name: "Июнь"),
        Month(numDays: 31, name: "Июль"),
        Month(numDays: 31, name: "Август"),
        Month(numDays: 30, name: "Сентябрь"),
        Month(numDays: 31, name: "Октябрь"),
        Month(numDays: 30, name: "Ноябрь"),
        Month(numDays: 31, name: "Декабрь")
    ]
    
    var body: some View {
        VStack (spacing: 0) {
//            ForEach(numbers, id: \.self) { number in
//                RowView(num: number)
//            }
            
            ForEach(months, id: \.name) { month in
                RowViewMonth(month: month)
            }
        }
    }
}

struct Month {
    var numDays: Int
    var name: String
}

struct RowView: View {
    var num: Int
    
    var body: some View {
        Text("\(num)")
    }
}

struct RowViewMonth: View {
    var month: Month
    
    var body: some View {
        Text("\(month.name): \(month.numDays)")
    }
}

 


#Preview {
    ForEachView()
}
