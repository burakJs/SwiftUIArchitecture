//
//  PropertyWrapperView.swift
//  SwiftUIArchitecture (iOS)
//
//  Created by Sr Burak on 17.08.2022.
//

import SwiftUI

struct PropertyWrapperView: View {
    @State var userWrapperModel: UserWrapperModel = UserWrapperModel(name: "Burak", lastName: "imdat",age: "deneme")
    
    var body: some View {
        VStack {
            Text(userWrapperModel.fullName)
                .font(.largeTitle)
            TextField("", text: $userWrapperModel.lastName)
            TextField("Number", text: $userWrapperModel.age)
        }
    }
}

struct PropertyWrapperView_Previews: PreviewProvider {
    static var previews: some View {
        PropertyWrapperView()
    }
}
