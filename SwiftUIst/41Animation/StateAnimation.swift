//
//  41.5.swift
//  SwiftUIst
//
//  Created by 정다산 on 12/12/23.
//

import SwiftUI

struct StateAnimation: View {
    @State private var visibility = false
    var body: some View {
        VStack{
            Toggle(isOn: $visibility.animation(.linear(duration: 1))){
                Text("Toogle Text Views")
            }
            .padding()
            
            if visibility {
                Text("Hello World")
                    .font(.largeTitle)
            }else{
                Text("Goodbye World")
                    .font(.largeTitle)
            }
            
            
        }
    }
}

#Preview {
    StateAnimation()
}
