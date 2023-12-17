//
//  ManyCharts.swift
//  SwiftUIst
//
//  Created by 정다산 on 12/17/23.
//

import SwiftUI
import Charts

struct MonthlyTempp: Identifiable{
    var id = UUID()
    var month:String
    var degress: Int
    var year: String
}
struct ManyCharts: View {
    var body: some View {
        let tempData: [MonthlyTempp] = [
        MonthlyTempp(month: "Jan", degress: 50, year: "2021"),
        MonthlyTempp(month: "Feb", degress: 43, year: "2021"),
        MonthlyTempp(month: "Mar", degress: 61, year: "2021"),
        
        MonthlyTempp(month: "Jan", degress: 30, year: "2022"),
        MonthlyTempp(month: "Feb", degress: 38, year: "2022"),
        MonthlyTempp(month: "Mar", degress: 30, year: "2022")
        ]
        Chart(tempData){ data in
            LineMark(
                x: .value("Month", data.month),
                y: .value("Temp", data.degress)
            )
            .interpolationMethod(.stepStart)
            .foregroundStyle(by: .value("Year", data.year))
            .symbol(by: .value("Year", data.year))
        }
        .chartPlotStyle{ plotArea in
            plotArea
                .background(.gray.opacity(0.3))
            
        }
    }
}

#Preview {
    ManyCharts()
}
