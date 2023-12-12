//
//  EX1.swift
//  SwiftUIst
//
//  Created by 정다산 on 11/1/23.
//

import SwiftUI

struct EX1: View {
   
    @State var title = "first view"
    
    var body: some View {
        NavigationStack{
            VStack{
                Text(title)
                NavigationLink(destination: SecondView(title: $title), label: {Text("Go...")})
            }
        }
    }
}

struct SecondView :View {
    
    @Binding var title: String
    
    var body: some View {
        VStack{
            Text(title)
        }
        .onAppear{
            title = "Second View"
        }
        .onDisappear{
            title = "First View"
        }
        .navigationTitle(title)
    }
}

#Preview {
    EX1()
}
