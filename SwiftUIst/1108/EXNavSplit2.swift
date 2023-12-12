//
//  EXNavSplit2.swift
//  SwiftUIst
//
//  Created by 정다산 on 11/8/23.
//

import SwiftUI

struct Item2: Identifiable,Hashable {
    var id = UUID()
    var title: String
    var content: String
}
struct ListView: View {
    var items: [Item2]
    @Binding var selecteditem: Item2?
    var body: some View {
        List(items,id:\.self,selection:$selecteditem){
            Text($0.title)
        }
    }
}
struct DetailView: View {
    @Binding var item: Item2?
    
    var body: some View {
        VStack {
            if let item{
                Text(item.title)
                    .font(.largeTitle)
                Text(item.content)
                    .padding()
            }else{
                Text("No selected")
            }
        }
    }
}
struct EXNavSplit2: View {
   
    let items = [
            Item2(title: "첫 번째 항목", content: "이것은 첫 번째 항목입니다."),
            Item2(title: "두 번째 항목", content: "이것은 두 번째 항목입니다."),
            Item2(title: "세 번째 항목", content: "이것은 세 번째 항목입니다."),
            Item2(title: "네 번째 항목", content: "이것은 네 번째 항목입니다."),
            Item2(title: "다섯 번째 항목", content: "이것은 다섯 번째 항목입니다."),
            Item2(title: "여섯 번째 항목", content: "이것은 여섯 번째 항목입니다."),
            Item2(title: "일곱 번째 항목", content: "이것은 일곱 번째 항목입니다."),
            Item2(title: "여덟 번째 항목", content: "이것은 여덟 번째 항목입니다."),
            Item2(title: "아홉 번째 항목", content: "이것은 아홉 번째 항목입니다."),
            Item2(title: "열 번째 항목", content: "이것은 열 번째 항목입니다.")
        ]
    @State private var selectedItem: Item2?
    
    
    var body: some View {
        NavigationSplitView{
            ListView(items: items,selecteditem: $selectedItem )
            
        }detail: {
          
                DetailView(item: $selectedItem)
            }
            
        }
    }



#Preview {
    EXNavSplit2()
}
