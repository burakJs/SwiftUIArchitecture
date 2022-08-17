//
//  MarketItem.swift
//  SwiftUIArchitecture (iOS)
//
//  Created by Sr Burak on 17.08.2022.
//

import Foundation

struct MarketItem: Identifiable {
    let id: UUID = UUID()
    let name: String
    var price: Int

    mutating func updatePrice(value: Int?) {
        guard let _value = value else { return }
        price = _value
    }
}

extension MarketItem {
    static let items: [MarketItem] = [
        MarketItem(name: "B1", price: 15),
        MarketItem(name: "B2", price: 30)
    ]
}
