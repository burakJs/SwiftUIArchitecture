 //
//  NavigationUsers.swift
//  SwiftUIArchitecture (iOS)
//
//  Created by Sr Burak on 15.08.2022.
//

import SwiftUI

struct NavigationUsers: View {
    
    @State private var isPresented: Bool = false
    var body: some View {
        NavigationView {
            List(NavigationUserModel.samples, id: \.id) { data in
                NavigationLink {
                    UserViewDetail(user: data)
                } label: {
                    Text(data.name)
                }

            }
            .sheet(isPresented: $isPresented, onDismiss: {
                print("")
            }, content: {
                Button("Hello") {
                    isPresented.toggle()
                }
            })
                .listStyle(GroupedListStyle())
                .navigationTitle(Text("Navigation Users"))
                .toolbar {
                    ToolbarItem {
                        Button("Open Sheet") {
                            isPresented.toggle()
                        }
                    }
                }
        }
        
        
    }
}

struct NavigationUsers_Previews: PreviewProvider {
    static var previews: some View {
        NavigationUsers()
    }
}
