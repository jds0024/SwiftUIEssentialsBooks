//
//  AlignmentEx2.swift
//  SwiftUIst
//
//  Created by 정다산 on 10/30/23.
//

import SwiftUI

extension Image {
    func circleImageModifier() -> some View{
        self
            .resizable()
            .scaledToFit()
            .frame(width: 100,height: 100)
        
    }
}
extension Button {
    func buttonModifier() -> some View {
        self
        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 35)
        .background(Color.indigo)
        .foregroundColor(.white)
        .cornerRadius(6)
    }
}

struct AlignmentEx2: View {
    var body: some View {
        VStack(){
            
            
            
            Image(systemName: "circle")
                .circleImageModifier()
            HStack{
                Image(systemName: "circle")
                    .circleImageModifier()
                Image(systemName: "circle")
                    .circleImageModifier()
                Image(systemName: "circle")
                    .circleImageModifier()
            }
            HStack{
                Image(systemName: "circle")
                    .circleImageModifier()
                Image(systemName: "circle")
                    .circleImageModifier()
                Image(systemName: "circle")
                    .circleImageModifier()
            }
            
            
            Spacer()
            
            
            HStack{
                Spacer()
                Button("BUTTON"){}
                    .buttonModifier()
                    Spacer()
                Button("BUTTON"){}
                    .buttonModifier()
                Spacer()
                Button("BUTTON"){}
                    .buttonModifier()
                Spacer()
            }
            
            
        }//V
    }
}

#Preview {
    AlignmentEx2()
}
