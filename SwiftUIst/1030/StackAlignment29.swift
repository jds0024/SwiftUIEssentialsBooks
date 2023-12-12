//
//  Stackalignment29.swift
//  SwiftUIst
//
//  Created by 정다산 on 10/30/23.
//

import SwiftUI

extension VerticalAlignment{
    private enum CrossAlignment: AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            d[.bottom]
        }
    }
    static let crossAlignment = VerticalAlignment(CrossAlignment.self)
}

//p294

//스택 정렬 교차 (스택 겹치기)p.291
struct StackAlignment29: View {
    var body: some View {
        HStack(alignment: .crossAlignment,spacing: 20){
            Circle()
                .foregroundColor(.purple)
                .frame(width: 100, height: 100)
                .alignmentGuide(.crossAlignment, computeValue: { d in
                    d[VerticalAlignment.center]
                })
            VStack {
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
                    .alignmentGuide(.crossAlignment, computeValue: { d in
                        d[VerticalAlignment.center]
                    })
                    
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
            }
        }
        .padding()
    }
}


#Preview {
    StackAlignment29()
}
