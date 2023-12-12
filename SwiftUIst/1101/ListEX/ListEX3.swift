//
//  ListEX#.swift
//  SwiftUIst
//
//  Created by 정다산 on 11/1/23.
//

import SwiftUI



struct ListEX3: View {
    
    struct Item: Identifiable{
        let id = UUID()
        let image: String
        let text: String
    }
    let items = [
    Item(image: "applelogo", text: "Apple"),
    Item(image: "swift", text: "Swfit"),
    Item(image: "xcode", text: "Xcode"),
    Item(image: "macos", text: "Macos"),
    Item(image: "ios", text: "ios")
    ]
    @State private var selectedItem = -1
    @State private var multiSelection = Set<UUID>()
        //uuid타입으로 받겠다
    
    var body: some View {
        
        
  
        Text("\(multiSelection.count) selections")
                .font(.largeTitle)
                .padding()
        
        NavigationStack{
            List(selection: $multiSelection){
                    //item의 id를 가지고 이걸 선택을했다 안했다 를 선택한다
                ForEach(items){item in
                    HStack{
                        Text("item\(item.text)")
                        
                        
                        
                        
                        
                    }
                    
                }
            }
            .navigationTitle("SwiftUI List Quiz")
            .toolbar{EditButton()}
        }
        
    }
}

#Preview {
    ListEX3()
}
