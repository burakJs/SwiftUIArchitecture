//
//  EnvironmentView.swift
//  SwiftUIArchitecture (iOS)
//
//  Created by Sr Burak on 16.08.2022.
//

import SwiftUI

struct EnvironmentView: View {
    
    @Environment(\.verticalSizeClass) var verticalSize
    
    @StateObject var userController = UserController()
    
    var body: some View {
        NavigationView {
            VStack {
                Text(userController.currentDate.formatted())
                HStack {
                    verticalSize == .compact ? Spacer.mediumVertical : Spacer.minVertical
                    DatePicker(selection: $userController.currentDate) {
                        Text("Date")
                    }
                    verticalSize == .compact ? Spacer.mediumVertical : Spacer.minVertical
                }
                
                NavigationLink {
                    DateControlView()
                } label: {
                    Text("Normal View")
                }

            }
        }.environmentObject(userController)
    }
}

class UserController: ObservableObject {
    @Published var currentDate: Date = Date()
}

struct EnvironmentView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentView()
    }
}

