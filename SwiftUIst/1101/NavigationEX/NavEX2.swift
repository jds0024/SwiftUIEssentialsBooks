//
//  NavEX2.swift
//  SwiftUIst
//
//  Created by 정다산 on 11/1/23.
//

import SwiftUI

struct NavEX2: View {
    
    @State var text = "안녕하세요"
    
    var body: some View {
        NavigationStack{
            VStack {
                TextField(text, text: $text)
                
                
                NavigationLink(destination: TextField(text, text: $text) ){
                    Text("이동")
                }
                
            }
            
        }
    }
}


#Preview {
    NavEX2()
}
