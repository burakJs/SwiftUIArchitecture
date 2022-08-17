//
//  UserViewModel.swift
//  SwiftUIArchitecture (iOS)
//
//  Created by Sr Burak on 17.08.2022.
//

import Foundation

class UserViewModel: ObservableObject {
    
    init(userService: IUserService) {
        self.userService = userService
        Task.detached {
            await self.fetchWholeItems()
        }
    }
    
    let userService: IUserService
    @Published var user: User?
    
    func fetchWholeItems() async {
        user = await userService.fetchUsers()
    }
}
