//
//  MarketDetailView.swift
//  SwiftUIArchitecture (iOS)
//
//  Created by Sr Burak on 17.08.2022.
//

import SwiftUI

struct MarketDetailView: View {
    @StateObject private var marketDetailVM: MarketDetailViewModel = MarketDetailViewModel()
    @EnvironmentObject var marketVM: MarketViewModel
    @Environment(\.dismiss) var dismiss: DismissAction

    var body: some View {
        VStack {
            TextField("Name", text: $marketDetailVM.name)
            TextField("Price", text: $marketDetailVM.count)
            Button("Save") {
                saveItem()
            }
        }
    }
}

extension MarketDetailView {
    private func saveItem() {
        let result = marketDetailVM.save()
        guard result.isComplete else { return }
        guard let _item = result.item else { return }
        marketVM.addItem(item: _item)
        dismiss.callAsFunction()
    }
}

struct MarketDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MarketDetailView()
    }
}
