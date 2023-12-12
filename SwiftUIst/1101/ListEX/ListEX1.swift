//
//  ListEX1.swift
//  SwiftUIst
//
//  Created by 정다산 on 11/1/23.
//

import SwiftUI

struct ListEX1: View {
    
    var body: some View {
        Text("SwiftUI List Quiz")
            .font(.largeTitle)
            .padding()
        List(){
            ForEach(1...10, id: \.self){
                Text("item\($0)")
                    .foregroundStyle(Color.blue)
                    .listRowBackground(Color.white)
                
            }
        }
    }
}

#Preview {
    ListEX1()
}
