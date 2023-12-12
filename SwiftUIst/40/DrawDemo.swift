//
//  DrawDemo.swift
//  SwiftUIst
//
//  Created by 정다산 on 12/11/23.
//

import SwiftUI

struct DrawDemo: View {
    let colors = Gradient(colors: [Color.red,Color.yellow,Color.green,Color.blue,Color.purple])
    var body: some View {
        Circle()
            .fill(RadialGradient(gradient: colors, center: .center, startRadius: CGFloat(0), endRadius: CGFloat(300)))
        Circle()
            .fill(AngularGradient(gradient: colors, center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/))
        Rectangle()
            .fill(LinearGradient(gradient: colors, startPoint: .topLeading, endPoint: .bottomTrailing))
            .frame(width: 360,height: 350)
    }
}

#Preview {
    DrawDemo()
}
