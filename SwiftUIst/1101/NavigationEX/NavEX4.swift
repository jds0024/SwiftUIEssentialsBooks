//
//  NavEX4.swift
//  SwiftUIst
//
//  Created by 정다산 on 11/1/23.
//

import SwiftUI

struct NavEX4: View {
    
    @State var text = "Hello"
    
    var body: some View {
        NavigationStack{
            NavigationLink(value: text){
                Text("이동")
                TextField(text, text: $text)
            }
            .navigationTitle("Title")
            
            
            
                
        }
    }
}


#Preview {
    NavEX4()
}
