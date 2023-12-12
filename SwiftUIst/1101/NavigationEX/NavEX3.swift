//
//  NavEX3.swift
//  SwiftUIst
//
//  Created by 정다산 on 11/1/23.
//

import SwiftUI

struct NavEX3: View {
   
    @State var secondColor = Color.blue
    
    var body: some View {
        
        
        NavigationStack(){
            
            NavigationLink(destination: NavEx3_2(secondColor: $secondColor) ){
                Text("secondPage")
            }
        }
    }
}
struct NavEx3_2: View {
   
    @Binding var secondColor:Color
    
    
    var body: some View {
        VStack{
            Text("Hello world")
        }.frame(width: 500 ,height: 1000)
        .background(secondColor)
        .navigationBarBackButtonHidden()
        //Nav로 호출해서 Nav속성이 있다
    }
    
}

#Preview {
    NavEX3()
}
