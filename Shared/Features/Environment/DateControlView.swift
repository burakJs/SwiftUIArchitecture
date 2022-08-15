//
//  DateControlView.swift
//  SwiftUIArchitecture (iOS)
//
//  Created by Sr Burak on 16.08.2022.
//

import SwiftUI

struct DateControlView: View {
    @EnvironmentObject var userController: UserController
    var body: some View {
        VStack {
            Text(userController.currentDate.ISO8601Format())
            Button("Edit Time") {
                userController.currentDate = Date.now
            }
        }
        
    }
}

struct DateControlView_Previews: PreviewProvider {
    static var previews: some View {
        DateControlView()
            .environmentObject(UserController())
    }
}
