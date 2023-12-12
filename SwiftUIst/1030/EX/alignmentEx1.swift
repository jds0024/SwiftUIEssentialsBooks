//
//  alignmentEx1.swift
//  SwiftUIst
//
//  Created by 정다산 on 10/30/23.
//

import SwiftUI

struct alignmentEx1: View {
    
    @State var isUpDown = true
    
    var body: some View {
        VStack(){
            Spacer()
            Image(systemName :isUpDown
                                ?"square.and.arrow.up"
                                :"square.and.arrow.down"
            )
                .resizable()
                .scaledToFit()
                .frame(minWidth:100,maxWidth: 300,minHeight: 100,maxHeight: 300)
            
            Spacer()
            
            HStack(){
                
                Spacer()
                
                Button("UP"){isUpDown = true}
                .padding(10)
                .frame(width: 100)
                .background(Color.indigo)
                .cornerRadius(10)
                .foregroundColor(.white)
                
                Spacer()
                
                Button("DOWN"){isUpDown=false}
                .padding(10)
                .frame(width: 100)
                .background(Color.indigo)
                .cornerRadius(10)
                .foregroundColor(.white)
                
                Spacer()
                
            }//H
            
            Spacer()
            
            Image(systemName :isUpDown 
                                ?"square.and.arrow.down"
                                :"square.and.arrow.up"
            )
                .resizable()
                .scaledToFit()
                .frame(minWidth:100,maxWidth: 300,minHeight: 100,maxHeight: 300)
        }//V
            
        
    }
}

#Preview {
    alignmentEx1()
}
