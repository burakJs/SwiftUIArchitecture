//
//  SampleListView.swift
//  SwiftUIArchitecture (iOS)
//
//  Created by Sr Burak on 5.08.2022.
//

import SwiftUI

struct SampleListView: View {
    private let items: Array<String> = [
        "chevron.right",
        "chevron.left",
        "chevron.left",
        "chevron.left"
    ]
    
    var body: some View {
        List {
            Section(header: Text("Deneme").font(.largeTitle).bold()){
                HStack {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                
                Text("Hello")
                Text("Hello")
            }
            
            Section {
                HStack {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                
                Text("Hello")
                HStack {
                    ForEach(items, id: \.self) { item in
                        Image(systemName: item)
                    }
                }
            }
            
            
        }.listStyle(GroupedListStyle())
    }
}

struct SampleListView_Previews: PreviewProvider {
    static var previews: some View {
        SampleListView()
    }
}
