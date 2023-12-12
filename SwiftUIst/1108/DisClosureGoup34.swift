//
//  DisClosureGoup34.swift
//  SwiftUIst
//
//  Created by 정다산 on 11/8/23.
//
//DisclosurGroup
//구조화되지 않은 항목들을 닫거나 펼칠 수 있도록 디스클로저 컨트롤을 제공


import SwiftUI

struct DisClosureGoup34: View {
    
    @State private var hybridState = false
    @State private var eletricState = true
    @State private var fuelCellState = false
    @State private var inversionState = true
    
    //최초 표시될 때 확장 모드로 표시 되도록 초기화
    @State private var filterExpanded: Bool = true
    
    var body: some View {
        Form{
            //isEXpand:최초 표시시 확장,비확장 설정
            DisclosureGroup(isExpanded: $filterExpanded) {
                ToggleControl(title: "Hybrid Cars", state: hybridState)
                ToggleControl(title: "Electric Cars", state: eletricState)
                ToggleControl(title: "Hybrid Cars", state: fuelCellState)
            }label: {
                Label("Categories Filter",systemImage: "car.2.fill")
            }
            DisclosureGroup {
                ColorControl(color: .red, label: "Background Color")
                ColorControl(color: .red, label: "Background Color")
                ToggleControl(title: "Color inversion", state: inversionState)
            }label: {
                Label("Color setting",systemImage: "scribble.variable")
            }
        }
    }
}
struct ColorControl:View {
    var color: Color
    var label: String
    
    
    var body: some View {
        HStack{
            Text(label)
            Spacer()
            Rectangle()
                .fill(color)
                .frame(width: 30,height: 30)
    }
}
    
}



struct ToggleControl: View {
    var title: String
    @State var state: Bool
    
    var body: some View {
        Toggle(title,isOn: $state)
            .padding(.leading)
    }
}

#Preview {
    DisClosureGoup34()
}
