//
//  ContextMenu39.swift
//  SwiftUIst
//
//  Created by 정다산 on 11/9/23.
//
/**
 ContextMenu
 
 사용자가 뷰를 롱 프레스 했을 때 나따나는 메뉴
 
 일반적으로 Text,Image와 함께 선택했을때 동작을 수행하도록 Button뷰를 포함
 
 */

import SwiftUI

struct ContextMenu39: View {
    
    @State private var foregroundColor:Color = .black
    @State private var backgroundColor:Color = .white
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .padding()
            .font(.largeTitle)
            .foregroundStyle(foregroundColor)
            .background(backgroundColor)
            .contextMenu{
                Button{
                    self.foregroundColor = .black
                    self.backgroundColor = .white
                }label: {
                    Text("Normal Colors")
                    Image(systemName: "paintbrush")
                }
                Button{
                    self.foregroundColor = .white
                    self.backgroundColor = .black
                }label: {
                    Text("Invert Colors")
                    Image(systemName: "paintbrush.fill")
                }
            }
        
        Text("🥰")
            
    }
    
}

#Preview {
    ContextMenu39()
}
