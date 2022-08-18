//
//  UserWrapperModel.swift
//  SwiftUIArchitecture (iOS)
//
//  Created by Sr Burak on 17.08.2022.
//

import Foundation

// lastName is always bigger
struct UserWrapperModel {
    var name: String
    @UpperCaseWrapper var lastName: String
    @NumberCaseWrapper var age: String
    
    var fullName: String {
        return "\(name) \(lastName) \(age)"
    }
}
