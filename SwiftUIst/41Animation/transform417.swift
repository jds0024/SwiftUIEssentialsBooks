//
//  transform417.swift
//  SwiftUIst
//
//  Created by 정다산 on 12/12/23.
//

import SwiftUI

struct transform417: View {
    @State private var isButtonVisible: Bool = true
    var body: some View {
        VStack{
            Toggle(isOn:$isButtonVisible.animation(.linear(duration: 2))){
                Text("Show/Hide Button")
            }
            if isButtonVisible{
                Button(action: {} )  {
                    Text("Example Btton")
                }
                .font(.largeTitle)
//                .transition(.fadeAndMove)
                .transition(.asymmetric(insertion: .scale, removal: .slide))
            }
        }
    }
}
extension AnyTransition{
    static var fadeAndMove: AnyTransition{
        AnyTransition.opacity.combined(with: .move(edge: .top))
    }
}
#Preview {
    transform417()
}
