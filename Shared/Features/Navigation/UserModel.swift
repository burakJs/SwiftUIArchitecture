//
//  UserModel.swift
//  SwiftUIArchitecture (iOS)
//
//  Created by Sr Burak on 15.08.2022.
//

import Foundation

struct NavigationUserModel: Identifiable {
    let id: UUID = UUID()
    let name: String
    
}

extension NavigationUserModel {
    
    /// Samples Navigation user model
    static let samples: [NavigationUserModel] = [
        NavigationUserModel(name: "Burak"),
        NavigationUserModel(name: "Burak2"),
        NavigationUserModel(name: "Burak3")
    ]
    
    static let oneModel: NavigationUserModel = NavigationUserModel(name: "Burak")
    
}
