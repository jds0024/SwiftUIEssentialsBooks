//
//  AutoStart.swift
//  SwiftUIst
//
//  Created by 정다산 on 12/12/23.
//

import SwiftUI

struct AutoStart: View {
    
    @State private var rotation: Double = 0
    @State private var isSpring: Bool = true
    var body: some View {
        ZStack{
            Circle()
                .stroke(lineWidth: 2)
                .foregroundStyle(Color.blue)
                .frame(width: 360, height: 360)
            
            Image(systemName: "forward.fill")
                .font(.largeTitle)
                .offset(y: -180)
                .rotationEffect(.degrees(rotation))
                .animation(Animation.linear(duration: 5).repeatForever(autoreverses: false),value: rotation)
        }
        .onAppear(){
            isSpring.toggle()
            rotation = isSpring ? 0 : 360
        }
    }
}

#Preview {
    AutoStart()
}
