//
//  ExOutlineGroup.swift
//  SwiftUIst
//
//  Created by 정다산 on 11/8/23.
//

import SwiftUI

struct Alphbet:Identifiable{
    var id = UUID()
    var name: String
    var child:[Alphbet]?
    
}
struct MenuItem {
    let name: String
    let price: Double?
    let subItems: [MenuItem]?
}

struct ExOutlineGroup: View {
    
    
    let menu = [
        MenuItem(name: "Burger", price: 10.0, subItems: nil),
        MenuItem(name: "Pizza", price: 0.9, subItems: [
            MenuItem(name: "Cheese", price: 0.0, subItems: nil),
            MenuItem(name: "Pepperoni", price: 0.0, subItems: nil),
            MenuItem(name: "Veggie", price: 0.0, subItems: nil)
        ]),
        MenuItem(name: "Salid", price: 10.0, subItems: nil)
    ]
    var body: some View {
        
        
        
        List{
            OutlineGroup(menu,id:\.name, children:\.subItems ){i in
                Text(i.name)
            }
                
        }
    }
}

#Preview {
    ExOutlineGroup()
}
