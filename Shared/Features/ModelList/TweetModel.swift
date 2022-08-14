//
//  TweetModel.swift
//  SwiftUIArchitecture (iOS)
//
//  Created by Sr Burak on 12.08.2022.
//

import Foundation

struct TweetModel: Identifiable {
    var id: UUID = UUID()
    
    let userName: String
    var body: String
    var likeCount: Int?
    
}

extension TweetModel {
    
    /// Sample Tweets Array
    static let tweets: [TweetModel] = [
        TweetModel(userName: "Burak", body: "Hello-1", likeCount: 10),
        TweetModel(userName: "Burak", body: "Hello-2", likeCount: 20),
        TweetModel(userName: "Burak", body: "Hello-3")
    ]
    
    static let fakeTweet = TweetModel(userName: "Burak", body: "Hello-1", likeCount: 10)
}
