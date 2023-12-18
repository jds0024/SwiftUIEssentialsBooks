//
//  SelectData.swift
//  SwiftUIst
//
//  Created by 정다산 on 12/18/23.
//

import Foundation

struct SalesInfo: Identifiable{
    var id = UUID()
    var month:String
    var total:Int
}
struct SalesData{
    var retailSales: [SalesInfo] = [
        .init(month: "Jan", total: 5),
        .init(month: "Feb", total: 7),
        .init(month: "March", total: 6),
        .init(month: "April", total: 5),
        .init(month: "May", total: 6),
        .init(month: "June", total: 3),
        .init(month: "July", total: 6)
        
    ]
    var onlineSales: [SalesInfo] = [
        .init(month: "Jan", total: 2),
        .init(month: "Feb", total: 4),
        .init(month: "March", total: 5),
        .init(month: "April", total: 2),
        .init(month: "May", total: 4),
        .init(month: "June", total: 1),
        .init(month: "July", total: 4)
        
    ]
}
