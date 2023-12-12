//
//  TabView38.swift
//  SwiftUIst
//
//  Created by 정다산 on 11/9/23.
//Tab View
//사용자가 이동할 화면들을 나타내는 하위 뷰들로 구성
//뷰들 사이를 이동하는 데 사용될 탭 아이템을 가진 탭 바를 레이아웃 하단에 표시

import SwiftUI

struct TabView38: View {
    
    @State private var selection = 3
    
    var body: some View {
        VStack{
            //텝튜 콘텐츠 추가
            Text("\(selection)")
            TabView(selection: $selection){
                Text("First Content view")
                    .tabItem {
                        Image(systemName: "1.circle")
                        Text("Screen One")
                    }.tag(1)
                
                Text("Second Content view")
                    .tabItem {
                        Image(systemName: "1.circle")
                        Text("Screen Two")
                    }.tag(2)
                
                Text("Third Content view")
                    .tabItem {
                        Image(systemName: "1.circle")
                        Text("Screen Three")
                    }.tag(3)
            }
            .font(.largeTitle)
            //뷰 페이징
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
        }
        .background(.teal)
    }
}

#Preview {
    TabView38()
}
