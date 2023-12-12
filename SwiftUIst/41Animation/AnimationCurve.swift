//
//  AnimationCurve.swift
//  SwiftUIst
//
//  Created by 정다산 on 12/12/23.
//

import SwiftUI

struct AnimationCurve: View {
    @State var height:CGFloat = 40
    var body: some View {
        VStack{
            Spacer()
            HStack(alignment:.bottom){
                ZStack{
                    Capsule()
                        .frame(width: 30,height: height)
                        .foregroundStyle(Color.red)
                        .animation(.linear(duration: 2))
                   
                        Text("linear")
                    
                }
                ZStack{
                Capsule()
                    .frame(width: 30,height: height)
                    .foregroundStyle(Color.orange)
                    .animation(.easeOut(duration: 2))
                    Text("easeOut")
                }
                ZStack{
                Capsule()
                    .frame(width: 30,height: height)
                    .foregroundStyle(Color.yellow)
                    .animation(.easeIn(duration: 2))
                    Text("easeIn")
                }
                ZStack{
                Capsule()
                    .frame(width: 30,height: height)
                    .foregroundStyle(Color.green)
                    .animation(.easeInOut(duration: 2))
                    Text("easeInOut")
                }
                ZStack{
                Capsule()
                    .frame(width: 30,height: height)
                    .foregroundStyle(Color.blue)
                    .animation(.bouncy(duration: 2))
                    Text("bouncy")
                }
                ZStack{
                Capsule()
                    .frame(width: 30,height: height)
                    .foregroundStyle(Color.blue)
                    .animation(.default)
                    Text("default")
                }
            }
            .padding()
            
            Button(action: {height = 500}, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
        }
    }
}

#Preview {
    AnimationCurve()
}
