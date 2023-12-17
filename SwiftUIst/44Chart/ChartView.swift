//
//  ChartView.swift
//  SwiftUIst
//
//  Created by 정다산 on 12/17/23.
//

import SwiftUI
import Charts

struct ChartView: View {
    var body: some View {
        Chart{
            AreaMark(
                x: PlottableValue.value("Month", "Jan"),
                y: PlottableValue.value("Temp", 50)
            )
            AreaMark(
                x: PlottableValue.value("Month", "Feb"),
                y: PlottableValue.value("Temp", 43)
            )
            AreaMark(
                x: PlottableValue.value("Month", "Mar"),
                y: PlottableValue.value("Temp", 61)
            )
            
            
            
        }
    }
}

#Preview {
    ChartView()
}
