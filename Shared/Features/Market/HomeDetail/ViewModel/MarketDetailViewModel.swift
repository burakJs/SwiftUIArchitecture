//
//  MarketDetailViewModel.swift
//  SwiftUIArchitecture (iOS)
//
//  Created by Sr Burak on 17.08.2022.
//

import Foundation

class MarketDetailViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var count: String = ""

    func save() -> (item: MarketItem?, isComplete: Bool) {
        guard !name.isEmpty else { return (nil, false) }
        guard let value = Int(count) else { return (nil, false) }

        return (MarketItem(name: name, price: value), true)
    }
}
