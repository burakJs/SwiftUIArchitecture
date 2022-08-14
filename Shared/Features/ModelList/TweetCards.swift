//
//  TweetCards.swift
//  SwiftUIArchitecture (iOS)
//
//  Created by Sr Burak on 15.08.2022.
//

import SwiftUI

struct TweetCards: View {
    let tweet: TweetModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(tweet.userName)
                .font(.largeTitle)
            Text(tweet.body)
                .font(.title3)
            
            
                HStack {
                    if tweet.likeCount != nil {
                        Text("\(tweet.likeCount!)")
                            .fontWeight(.light)
                        Image(systemName: "heart.circle.fill")
                            .foregroundColor(.pink)
                    }
                    Spacer()
                }
            
            
        }
        .padding(2)
        .frame(height: 100, alignment: .center)
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(.red,lineWidth: 2)).padding(2)
        
    }
}

struct TweetCards_Previews: PreviewProvider {
    static var previews: some View {
        TweetCards(tweet: TweetModel.fakeTweet).previewLayout(.sizeThatFits)
    }
}
