//
//  GridEx1.swift
//  SwiftUIst
//
//  Created by 정다산 on 11/9/23.
//

import SwiftUI

struct GridEX:View {
    var body: some View {
        Text("1")
            .font(.system(size: 40))
            .bold()
            .padding(.horizontal,30)
            .background(.red)
            .cornerRadius(10)
    }
}


struct GridEx1: View {
    @State var sliderBar:Float = 0
    var gridItems = [
        [GridItem()],
        [GridItem(),GridItem()],
        [GridItem(),GridItem(),GridItem()],
        [GridItem(),GridItem(),GridItem(),GridItem()],
        [GridItem(),GridItem(),GridItem(),GridItem(),GridItem()]
    ]
    
    
    
    
    
  
    
    
    
    var body: some View {
        ScrollView{
            VStack{
                
                HStack{
                    Text("0")
                        
                    Slider(value: $sliderBar,in: 0...4)
                        .accentColor(.red)
                    Text("4")
                        
                }
                .padding()
                
                Text("\(Int(sliderBar))")
                    .font(.system(size: 20))
                    .padding()
                    .bold()
                Spacer()
                LazyVGrid(columns: gridItems[Int(sliderBar)],spacing: 20){
                    ForEach(0..<5){i in
                        GridEX()
                        
                        
                    }
                }.animation(.default)
                
            }
        }
    }
}

#Preview {
    GridEx1()
}
