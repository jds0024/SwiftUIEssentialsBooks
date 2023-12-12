//
//  ListEX5.swift
//  SwiftUIst
//
//  Created by 정다산 on 11/1/23.
//

import SwiftUI

struct ListEX5: View {
    struct Item: Identifiable{
        let id = UUID()
        let image: String
        let text: String
    }
    
    @State var items = [
    Item(image: "applelogo", text: "Apple"),
    Item(image: "swift", text: "Swfit"),
    Item(image: "xcode", text: "Xcode"),
    Item(image: "macos", text: "Macos"),
    Item(image: "ios", text: "ios")
    ]
    
    
    
    var body: some View {
        
        Text("SwiftUI List Quiz")
            .font(.largeTitle)
            .padding()
        NavigationStack{
            List {
                ForEach(items){ item in
                    HStack{
                        Text("Item\(item.text)")
                        Spacer()
                        
                    }
                }
                .onDelete(perform: { indexSet in
                    items.remove(atOffsets: indexSet)
                })
                .onMove(perform: { indices, newOffset in
                    items.move(fromOffsets: indices, toOffset: newOffset)
                })
            }
            .navigationTitle("SwiftUI List Quiz")
            .toolbar{EditButton()}
        }//NVSTAck
        
    }
}

#Preview {
    ListEX5()
}
