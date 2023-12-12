//
//  Alignmnet29.swift
//  SwiftUIst
//
//  Created by 정다산 on 10/30/23.
//

import SwiftUI

extension VerticalAlignment {
    private enum OneThird : AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            d.height / 3
        }
        
        
    }
    static let onThird = VerticalAlignment(OneThird.self)
}

struct Alignmnet29: View {
    var body: some View {
        VStack(spacing: 50) {
            //컨테이너 정렬 VStack
            VStack(alignment: .trailing){
                Text("This is some text")
                Text("This is some longer text")
                Text("This is short")
            }
            //컨테이너 정렬 HStack                     //간격조절
            HStack(alignment:.firstTextBaseline ,spacing: 20) {
                Text("This is some text")
                    .font(.largeTitle)
                Text("This is some longer text")
                    .font(.body)
                Text("This is short")
                    .font(.headline)
            }
            //정렬 가이드 p.285
            VStack(alignment: .leading){
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width:120,height: 50)
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width:120,height: 50)
                    .alignmentGuide(.leading, computeValue: { dimension in
                        120.0 //고정값
                    })
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width:120,height: 50)
                    .alignmentGuide(.leading, computeValue: { dimension in
                        dimension.width / 3 //비율
                    })
                //HorizontalAlignmnet,VerticalAlignment 프로퍼티에 접근
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(width:120,height: 50)
                    .alignmentGuide(.leading, computeValue: { dimension in
                        dimension[HorizontalAlignment.trailing] + 50
                    })
            }
            
            HStack(alignment: .onThird){
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width:50,height: 100)
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width:50,height: 100)
                    .alignmentGuide(.onThird, computeValue: { d in
                        d[VerticalAlignment.top]                    })
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width:50,height: 100)
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(width:50,height: 100)
                    .alignmentGuide(.onThird, computeValue: { d in
                        d[VerticalAlignment.top]                    })
            }
            
        }
    }
}

#Preview {
    Alignmnet29()
}
