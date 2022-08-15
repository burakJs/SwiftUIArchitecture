//
//  CustomTabView.swift
//  SwiftUIArchitecture (iOS)
//
//  Created by Sr Burak on 15.08.2022.
//

import SwiftUI

struct CustomTabView: View {
    
    @State private var selectedIndex: CustomTabs = CustomTabs.heart
    
    var body: some View {
        VStack {
            Button("Reset") {
                selectedIndex = CustomTabs.heart
            }
            
            TabView(selection:  $selectedIndex) {
                
                HeartView().tabItem({
                    Image(systemName: "heart.fill")
                    Text("Tab Label - 1")
                }).tag(CustomTabs.heart)
                
                StarView().tabItem({
                    Image(systemName: "star")
                    if selectedIndex == CustomTabs.star {
                        Text("Tab Label - 2")
                    }
                    
                }).tag(CustomTabs.star)
                    
            }.accentColor(.red)
        }
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}

struct StarView: View {
    var body: some View {
        Text("Tab Content - 2")
    }
}

struct HeartView: View {
    @State private var fruits = [
        "Apple","Banana","Papaya","Mango"
    ]

    var body: some View {
        NavigationView {
            VStack {
                
                NavigationLink {
                    Text("Sample")
                } label: {
                    Label("Lightning", systemImage: "bolt.fill")
                }
 
                List {
                    ForEach(fruits,id: \.self) { fruit in
                        Text(fruit)
                    }
                }
                .navigationTitle("Fruits")
                .toolbar {
                    EditButton()
            }
            }
        }
    }
}
