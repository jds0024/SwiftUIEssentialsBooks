//
//  CustomProgress.swift
//  SwiftUIst
//
//  Created by 정다산 on 12/16/23.
//

import SwiftUI

struct CustomProgress: View {
    
    @State private var progress: Double = 1.0
    
    var body: some View {
        ProgressView("Task Progress", value: progress, total: 100)
            .progressViewStyle(ShadowProgressViewStyle())
        Slider(value: $progress,in: 1...100,step: 0.1)
        ProgressView("Task Progress", value: progress, total: 100)
            .progressViewStyle(MyCustomProgressViewStyle())
        Slider(value: $progress,in: 1...100,step: 0.1)
    }
}

struct ShadowProgressViewStyle : ProgressViewStyle{
    func makeBody(configuration: Configuration) -> some View {
        ProgressView(configuration)
            .accentColor(.red)
            .shadow(color: Color(red: 0,green: 0.7,blue: 0), radius: 10,x: 2.0,y: 2.0)
            .progressViewStyle(LinearProgressViewStyle())
    }
}
struct MyCustomProgressViewStyle:ProgressViewStyle{
    func makeBody(configuration: Configuration) -> some View {
        let percent = Int(configuration.fractionCompleted! * 100)
        return Text("Task \(percent)% complete")
    }
}
#Preview {
    CustomProgress()
}
