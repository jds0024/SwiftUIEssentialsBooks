//
//  ProgressView.swift
//  SwiftUIst
//
//  Created by 정다산 on 12/16/23.
//

import SwiftUI

struct Progress: View {
    
    @State private var progress: Double = 1.0
    
    var body: some View {
        Spacer()
        VStack{
            ProgressView("Task Progress", value: progress, total: 100)
                .progressViewStyle(LinearProgressViewStyle(tint: .red))
            
            ProgressView("Task Progress", value: progress, total: 100)
                .progressViewStyle(CircularProgressViewStyle())
                //ios17까지 버그로 인해 원형스타일이 불확정적인 스타일을 사용하여 표시됨
            Slider(value: $progress,in: 1...100,step: 0.1)
        }
        .padding()
        
        Spacer()
        
        Text("VStack자체에 progresStyle 한번에 주기 가능")
        VStack{
            ProgressView("Task 1 Progress", value: progress, total: 100)
            ProgressView("Task 2 Progress", value: progress, total: 100)
            ProgressView("Task 3 Progress", value: progress, total: 100)
        }
        .progressViewStyle(CircularProgressViewStyle())
        
        Spacer()
        
        Text("불확정 PrigressView")
        //불확정적인 ProgressView
        VStack{
            ProgressView()
            ProgressView("Working...")
        }
        Spacer()
    }
}

#Preview {
    Progress()
}
