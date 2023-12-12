//
//  NAvEX2_2.swift
//  SwiftUIst
//
//  Created by 정다산 on 11/1/23.
//

import SwiftUI

struct NAvEX2_2: View {
    
    @Binding var text: String
    
    var body: some View {
        TextField(text, text: $text)
    }
}

#Preview {
    NAvEX2_2(text: .constant("sdf"))
}
