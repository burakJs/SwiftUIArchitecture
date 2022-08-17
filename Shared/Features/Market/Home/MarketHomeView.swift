//
//  MarketHomeView.swift
//  SwiftUIArchitecture (iOS)
//
//  Created by Sr Burak on 17.08.2022.
//

import SwiftUI

struct MarketHomeView: View {
    @StateObject private var marketViewModel: MarketViewModel = MarketViewModel()
    var body: some View {
        NavigationView {
            VStack {
                List(marketViewModel.items) { item in
                    HStack {
                        Text(item.name)
                            .font(.title)
                        Spacer()
                        Text("$ \(item.price)")
                            .font(.title)
                    }.padding(4)
                }
                NavigationLink {
                    MarketDetailView()
                } label: {
                    Text("Add Item")
                }

            }
        }.environmentObject(marketViewModel)
    }
}

struct MarketHomeView_Previews: PreviewProvider {
    static var previews: some View {
        MarketHomeView()
    }
}
