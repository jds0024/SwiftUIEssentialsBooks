//
//  Gesture.swift
//  SwiftUIst
//
//  Created by 정다산 on 12/14/23.
//

import SwiftUI

struct Gesture: View {
    var body: some View {
        
        let tap = TapGesture()
            .onEnded{ _ in
                print("Tapped")
            }
        let doubleClick = TapGesture(count: 2)
            .onEnded{ _ in
                print("DoubleTapped")
            }
//        let longPress = LongPressGesture()
//            .onEnded{ _ in
//                print("Long Press")
//            }
        let longPress = LongPressGesture(minimumDuration: 3,maximumDistance: .infinity)
            .onEnded{ _ in
                print("Long Press")
            }
        
        
         Image(systemName: "hand.point.right.fill")
            .gesture(tap)
            .padding()
        
        Text("더블 탭")
            .padding()
            .gesture(doubleClick)
        
        Text("LongPress")
            .padding()
            .gesture(longPress)
        
        
        //onChanged 
        
            
        
    }
}

#Preview {
    Gesture()
}
