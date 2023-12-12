//
//  33NavSplitViewTuto.swift
//  SwiftUIst
//
//  Created by 정다산 on 11/8/23.
//

import SwiftUI

struct IconCategory: Identifiable, Hashable {
    let id = UUID()
    var categoryName: String
    var images: [String]
}

struct NavSplitViewTuto33: View {
    
    @State private var categories = [
           IconCategory(categoryName: "Folders", images: ["questionmark.folder.ar",
                                                          "questionmark.folder",
                                                          "questionmark.folder.fill.ar",
                                                          "folder.fill.badge.gear",
                                                          "questionmark.folder.fill"]),
           IconCategory(categoryName: "Circles", images:
                           ["book.circle",
                            "books.vertical.circle",
                            "books.vertical.circle.fill",
                            "book.circle.fill",
                            "book.closed.circle"]),
           IconCategory(categoryName: "Clouds", images:
                           ["cloud.rain",
                            "cloud",
                            "cloud.drizzle.fill",
                            "cloud.fill",
                            "cloud.drizzle"])

       ]
    //목록에서 현재 선택한 항목을 저장할 상태 변수
    @State private var selectedCategory: IconCategory?
    @State private var selectedImage: String?
    //앱이 처음 실행 될때 부터 세개의 열이 모두 표시되도록(.all)  변수 초기화
    @State private var colunmVisibility = NavigationSplitViewVisibility.all
    
    var body: some View {
        NavigationSplitView(columnVisibility: $colunmVisibility) {
            //사이드바 열
            List(categories,selection: $selectedCategory){category in
                Text(category.categoryName).tag(category)
            }
        }content:{
            // 콘텐츠 목록
                       if let selectedCategory {
                           List(selectedCategory.images, id: \.self, selection: $selectedImage) { image in
                               HStack {
                                   Image(systemName: image)
                                   Text(image)
                               }
                               .tag(image)
                           }
                       } else {
                           Text("Select a category")
                       }
           
        }
        detail: {
            if let selectedImage {
                Image(systemName: selectedImage)
                    .resizable()
                    .scaledToFit()
                    
                
            }else{
                Text("Select a image")
                
            }
        }//nav
        
        .navigationSplitViewStyle(.balanced)
    }
}


#Preview {
    NavSplitViewTuto33()
}
