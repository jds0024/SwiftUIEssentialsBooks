//
//  AnimationDemo.swift
//  SwiftUIst
//
//  Created by 정다산 on 12/12/23.
//

import SwiftUI

struct AnimationDemo: View {
    @State private var rotation:Double = 0
    @State private var scale: CGFloat = 1
    var body: some View {
        Button (action: { withAnimation(.linear(duration: 2)){
            self.rotation = (rotation < 360 ? rotation + 60 : 0)
        }
            self.scale = (scale < 2.8 ? scale + 0.3 : 1)
        }){
            Text("Clcik to Animate")
                .rotationEffect(.degrees(rotation))
                .scaleEffect(scale)
//                .animation(.linear(duration: 1).repeatCount(10,autoreverses: false),value: rotation)
//                .animation(.spring(response:1,dampingFraction: 0.2,blendDuration: 0),value: rotation)
        }
    }
}

#Preview {
    AnimationDemo()
}
