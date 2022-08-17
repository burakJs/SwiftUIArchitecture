//
//  UserView.swift
//  SwiftUIArchitecture (iOS)
//
//  Created by Sr Burak on 17.08.2022.
//

import SwiftUI
import Kingfisher

struct UserView: View {

    @StateObject var userViewModel: UserViewModel = UserViewModel(userService: UserService())

    var body: some View {
        if userViewModel.user == nil {
            LoadingView()
        } else {
            List(userViewModel.user!.data ?? []) {
                UserCard(model: $0)
            }
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}

struct UserCard: View {
    let model: Datum
    var body: some View {
        HStack {
            KFImage(URL(string: model.avatar ?? ""))
                .resizable()
                .frame(width:20, height: 20, alignment: .center)
            Text(model.firstName ?? "")
            Text(model.lastName ?? "")
        }
    }
}
