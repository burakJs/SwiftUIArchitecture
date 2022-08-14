//
//  ModelListView.swift
//  SwiftUIArchitecture (iOS)
//
//  Created by Sr Burak on 12.08.2022.
//

import SwiftUI

struct ModelListView: View {
    var body: some View {
        VStack {
            Text("Welcome List")
                .font(.largeTitle)
                .fontWeight(.light)
            
            List(TweetModel.tweets) { tweet in
                TweetCards(tweet: tweet)
            }.listStyle(.sidebar)
        }
        
    }
}

struct ModelListView_Previews: PreviewProvider {
    static var previews: some View {
        ModelListView()
    }
}
