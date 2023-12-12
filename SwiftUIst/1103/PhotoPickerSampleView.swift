//
//  PhotoPickerSampleView.swift
//  SwiftUIst
//
//  Created by 정다산 on 11/3/23.
//

import SwiftUI
import PhotosUI

struct PhotoPickerSampleView: View {
    
    @State private var selectedPhoto: PhotosPickerItem?//사진 선택 안할수도
    @State private var image: Image?
    
    var body: some View {
        NavigationStack{
            ZStack{
                image?
                    .resizable()
                    .scaledToFit()
                    
            }
            .toolbar {
                PhotosPicker(selection: $selectedPhoto,matching: .images){
                    Image(systemName: "photo.fill")
                }
            }
            .task(id: selectedPhoto){
                image = try? await selectedPhoto?.loadTransferable(type: Image.self)
            }
        }
    }
}

#Preview {
    PhotoPickerSampleView()
}
