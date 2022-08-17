//
//  MarketViewModel.swift
//  SwiftUIArchitecture (iOS)
//
//  Created by Sr Burak on 17.08.2022.
//

import Foundation

class MarketViewModel: ObservableObject {

    init() {
        items = MarketItem.items
    }

    @Published var items: [MarketItem] = []

}

///MARK: Market business
extension MarketViewModel: MarketUses {
    func addItem(item: MarketItem) {
        items.append(item)
    }
    
}

protocol MarketUses {
    func addItem(item: MarketItem)
    mutating func remove(id: UUID) -> Bool
    var items: [MarketItem] { get set }
}

extension MarketUses {
    mutating func remove(id: UUID) -> Bool {
        guard let index = items.firstIndex(where:{$0.id == id}) else { return false }
        items.remove(at: index)
        return true
    }
    
}
