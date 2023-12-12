//
//  NavSplitDemoView.swift
//  SwiftUIst
//
//  Created by 정다산 on 11/8/23.
//
//NavigationSplitView
//와이드 디스플레이에서 멀티컬럼 기반의 내비게이션을 제공
/*
 NavigationSplitView(columnVisibility: $columnVisibility) {
              // 사이드바 목록
          } content: {
              // 콘텐트 목록
          } detail: {
              // 디테일 뷰
          }

 */

import SwiftUI

struct NavSplitDemoView: View {
    
    @State private var colors = ["Red","Green","Blue"]
    @State private var seletedColor: String?
    
    //열 가시성 제어
    //NavigaitionSplitViewVisibility 구조체에 의 해 제공
    //NavigaitionSplitView의 columnVisibility:초기화 매게변수를 사용
    @State private var columnVisibility = NavigationSplitViewVisibility.detailOnly
    
    var body: some View {
        NavigationSplitView(columnVisibility: $columnVisibility){
            List(colors,id: \.self,selection: $seletedColor){ color in
                
                //tag수정자는 List,Picker 및 TabView 와 같은 뷰에서 선택가능한 항목들을 구별하기 위해 사용
                Text(color).tag(color)
                
            }
//            .navigationSplitViewColumnWidth()
        }detail: {
            Text("Hello\(seletedColor ?? "No")")
        }
        .navigationSplitViewStyle(.automatic)
    }
}

#Preview {
    NavSplitDemoView()
}
