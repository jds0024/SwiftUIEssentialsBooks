//
//  ListEX2.swift
//  SwiftUIst
//
//  Created by 정다산 on 11/1/23.
//

import SwiftUI

struct ListEX2: View {
    var body: some View {
        Text("SwiftUI List Quiz")
            .font(.largeTitle)
            .padding()
        List{
            ForEach(1..<6){ section in
                Section{
                    ForEach(1..<4) {row in
                        Text("item \(row)")
                            .foregroundStyle(Color.blue)
                }
                    
                    
                } header: {
                    Text("Section \(section)")
                        .foregroundStyle(Color.black)
                } footer: {
                    HStack{
                        Spacer()
                        Text("\(3) 건")
                    }
                }
                
            }
        }
        
        .listStyle(GroupedListStyle())
    }
}

#Preview {
    ListEX2()
}
