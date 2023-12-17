//
//  DataChart.swift
//  SwiftUIst
//
//  Created by 정다산 on 12/17/23.
//

import SwiftUI
import Charts
struct MonthlyTemp: Identifiable{
    var id = UUID()
    var month:String
    var degress: Int
}
struct DataChart: View {
    
    let tempData: [MonthlyTemp] = [
        MonthlyTemp(month: "Jan", degress: 50),
        MonthlyTemp(month: "Feb", degress: 43),
        MonthlyTemp(month: "Mar", degress: 61)
    ]
    
    var body: some View {
        Chart(tempData){ data in
            AreaMark(
                x: .value("Month", data.month),
                y: .value("Temp", data.degress)
            )
        }
//        Chart{
//            ForEach(tempData){ data in
//                AreaMark(
//                    x: .value("Month", data.month),
//                    y: .value("Temp", data.degress))
//            }
//        }
        Chart(tempData){ data in
            RectangleMark(
                x: .value("Month", data.month),
                y: .value("Temp", data.degress)
            )
            LineMark(
                x: .value("Month", data.month),
                y: .value("Temp", data.degress)
            )
        }
    }
}

#Preview {
    DataChart()
}
