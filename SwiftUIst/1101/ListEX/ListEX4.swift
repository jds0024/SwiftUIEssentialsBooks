//
//  ListEX4.swift
//  SwiftUIst
//
//  Created by 정다산 on 11/1/23.
//

import SwiftUI

struct ListEX4: View {
    
    @State var isOnOff = Array(repeating: false, count: 10)
    
    var body: some View {
        Text("SwiftUI List Quiz")
                    .font(.largeTitle)
                    .padding()
                List(1...10, id: \.self) { item in
                    HStack {
                      
                        Toggle( isOn: $isOnOff[item-1]){
                            Text("Item \(item)")
                                .fontWeight(isOnOff[item-1] ? .bold : .regular)
                        }
                    }
                }
    }
}

#Preview {
    ListEX4()
}
