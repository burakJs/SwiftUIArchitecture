//
//  UserViewDetail.swift
//  SwiftUIArchitecture (iOS)
//
//  Created by Sr Burak on 15.08.2022.
//

import SwiftUI

struct UserViewDetail: View {
    let user: NavigationUserModel
    
    var body: some View {
        Text(user.name)
            .font(.largeTitle)
    }
}

struct UserViewDetail_Previews: PreviewProvider {
    static var previews: some View {
        UserViewDetail(user: NavigationUserModel.oneModel)
    }
}
