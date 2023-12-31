//
//  LazyGrid36.swift
//  SwiftUIst
//
//  Created by 정다산 on 11/8/23.
//
/**
 VGrid/HGrid  그리드 구축
 
 그리드 형식으로 컨텐츠를 표시 (멀티 컬럼 그리드)
 
 */

import SwiftUI

struct LazyGrid36: View {
    private var colors: [Color] = [.blue,.yellow,.green,.red]
    //flexible 모드는 디폴트로 생략가능
//    private var gridItems = [GridItem(),
//                             GridItem(),
//                             GridItem()
//                             ]
    //적응형 설정
    //뷰가 차지하는 공간에 맞출 수 있는 한 많은 행이나 열이 자도응로 표시되도록 그리드 뷰를 구성
    //열의 너비가 50pt 보다 작을 수 없다는 제한과 함께 그리드에 가능한 많은 열이 표시
    //private var gridItems = [GridItem(.adaptive(minimum: 50))]
    
    //고정형 설정
    //너비가 100인 단일 열을 가진 그리드가 표시
    //private var gridItems = [GridItem(.fixed(100))]
    
    //고정형과 적응형의 조합
    private var gridItems = [GridItem(.fixed(100)),
                             GridItem(.flexible(minimum: 50)),
                             GridItem(.fixed(150))
                                 ]
    
    
    var body: some View {
        ScrollView(.horizontal){
            LazyVGrid(columns: gridItems,spacing: 5){
                ForEach((0...99), id: \.self) { index in
                    CellContent(index: index, color: colors[index%colors.count])
                }
            }
            .padding()
            
            
        }//Scroll
    }
}

// 셀 동작하는 커스텀 뷰를 추가 p.367
struct CellContent: View{
    var index: Int
    var color: Color
    
    var body: some View {
        Text("\(index)")
            .frame(minWidth: 75,minHeight: 50,maxHeight: .infinity)
            .background(color)
            .cornerRadius(8)
            .font(.largeTitle)
    }
}

#Preview {
    LazyGrid36()
}
