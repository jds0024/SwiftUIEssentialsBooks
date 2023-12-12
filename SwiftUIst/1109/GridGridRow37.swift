//
//  GridGridRow27.swift
//  SwiftUIst
//
//  Created by 정다산 on 11/9/23.
//

import SwiftUI

struct GridGridRow37: View {
    var body: some View {
        Grid(alignment:.topLeading){
            
            GridRow(alignment:.bottom) {
                CellContent_1(index: 0, color: .orange)
                Image(systemName: "record.circle.fill")
                    .gridColumnAlignment(.trailing)
                Image(systemName: "record.circle.fill")
                    .gridCellAnchor(.center)
                Image(systemName: "record.circle.fill")
                    .gridCellAnchor(.top)
                CellContent_1(index: 0, color: .yellow)
            }
            .font(.largeTitle)
            GridRow(alignment:.top) {
                CellContent_1(index: 0, color: .orange)
                Image(systemName: "record.circle.fill")
                    .gridColumnAlignment(.leading)//왜 안먹음
                Image(systemName: "record.circle.fill")
                    
                Image(systemName: "record.circle.fill")
                    
                CellContent_1(index: 0, color: .yellow)
            }
            .font(.largeTitle)
            
            
            GridRow{
                ForEach(1...5, id: \.self){ index in
                    if(index % 2 == 1){
                        CellContent_1(index: index, color: .red)
                    } else{
                        //빈 셀은 clear색상 같은 구성된 Color뷰로 표시
                        //gridCellUnsizedAxes() 수정자를 적용하면 빈 셀의 높이와 너비가 == 점유된 셀의 디폴트 높이 또는 너비와 같도록 변경
                        Color.clear.gridCellUnsizedAxes([.horizontal,.vertical])
                    }
                }
            }
            //쟈동으로 생성되는 빈 그리드 셀
            //서로 다른 셀 개수를 포함하는 행을 가져야 하는경우, 가장긴 행과 일치하다록 짧은 행에 빈 세링 자동적으로 추가된다
            GridRow{
                ForEach(6...8, id: \.self){ index in
                    CellContent_1(index: index, color: .blue)
                }
            }
            GridRow{
                ForEach(11...12, id: \.self){ index in
                    CellContent_1(index: index, color: .green)
                }
            }
            //GridRow가 아닌 다른 자식 뷰
            //그리드 레이아우 내에서 전체 행으 ㄹ차지하도록 자동확장
            CellContent_1(index: 16, color: .blue)
            
            //열확장하기
            GridRow{
                CellContent_1(index: 17, color: .orange)
                    .gridCellColumns(2)
                CellContent_1(index: 18, color: .indigo)
                    .gridCellColumns(3)
            }
        }
        .padding()
    }
}
struct CellContent_1: View{
    var index: Int
    var color: Color
    
    var body: some View {
        Text("\(index)")
            .frame(minWidth: 50,maxWidth: .infinity ,minHeight: 100)
            .background(color)
            .cornerRadius(8)
            .font(.largeTitle)
    }
}

#Preview {
    GridGridRow37()
}
