//
//  ContentView.swift
//  Shared
//
//  Created by Sr Burak on 4.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        sampleStackView()
    }
    
    fileprivate func sampleHorizontalView() -> some View {
        return HStack {
            Spacer().frame(width: 100, alignment: .center)
            Text("Burak in SwiftUI")
                .padding()
            Text("Burak in SwiftUI2")
                .padding()
            Text("Burak in SwiftUI3")
                .padding()
            Color.red
            Spacer().frame(width: 100, alignment: .center)
            
        }
    }
    
    fileprivate func sampleVerticalView() -> some View {
        return VStack {
            Spacer().frame(width: 100, alignment: .center)
            Text("Burak in SwiftUI")
                .padding()
            Text("Burak in SwiftUI2")
                .padding()
            Text("Burak in SwiftUI3")
                .padding()
            Color.red
            Spacer().frame(width: 100, alignment: .center)
            
        }
    }
    
    fileprivate func sampleStackView() -> some View {
        return ZStack(alignment: .bottom) {
            Color.red
            Spacer().frame(width: 100, alignment: .center)
            Text("Burak in SwiftUI")
                .padding()
            Text("Burak in SwiftUI2")
                .padding()
            Text("Burak in SwiftUI3")
                .padding()
            
            Spacer().frame(width: 100, alignment: .center)
            
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
