//
//  UserService.swift
//  SwiftUIArchitecture (iOS)
//
//  Created by Sr Burak on 16.08.2022.
//

import Foundation
import Alamofire

protocol IUserService {
    func fetchUsers() async -> User?
}

// https://reqres.in/api/users?page=2

struct UserService: IUserService {
    func fetchUsers() async -> User? {
        let request = AF.request(ServicePath.users.toService()).serializingDecodable(User.self)
        let response = await request.response
        response.error?.showError()
        return  response.value
    }
}

private enum ServicePath: String {
    case users = "users"
    
    func toService() -> String {
        return "https://reqres.in/api/\(rawValue)"
    }
}
