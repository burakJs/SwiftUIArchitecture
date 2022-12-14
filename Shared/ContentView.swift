//
//  ContentView.swift
//  Shared
//
//  Created by Sr Burak on 4.08.2022.
//

import SwiftUI
import Kingfisher

struct IconFieldView: View {
    
    var iconName: String = "Hello"
    @State var textFieldValue: String = ""
    
    var body: some View {
        VStack {
            TextField("Placeholder", text: $textFieldValue)
            Text("Text: \(textFieldValue)")
                .font(.largeTitle)
                .bold()
            
            Image(systemName: textFieldValue.lowercased())
                .font(.largeTitle)
                .frame(width: 100, height: 100, alignment: .center)
        }
        
    }
}

struct ContentView: View {
    private let imageUrl:String = "https://picsum.photos/id/237/200/300"
    
    var body: some View {
        CircleTextImage(title: "Kabus", imageUrl: imageUrl)
            .frame(width: 200, height: 200, alignment: .center)
    }
    
    fileprivate func groupViews() -> some View {
        return VStack {
            // MARK: Login View
            // TODO: Fix User Name
            Group {
                VStack {
                    Text("Hello")
                        .tint(.blue)
                        .font(.callout)
                }
                .frame(width: 200, height: 200, alignment: .center)
                .background(Color("MyColorSet"))
            }
            
            // MARK: Register View
            Group {
                VStack {
                    Image(systemName: "moon.fill")
                        .foregroundColor(.red)
                    Text("Hello2")
                        .foregroundColor(.blue)
                        .opacity(0.8)
                }
            }
            
        }
    }
    
    fileprivate func demoView() -> some View {
        return VStack(alignment:.center) {
            Rectangle().frame(width: 100, height: 100, alignment: .center)
            Circle()
                .foregroundColor(.red)
                .frame(height: 100, alignment: .center)
            Text("Sample 1")
            Text("Sample 2")
            Text("Sample 3")
            Spacer()
            HStack(){
                RoundedRectangle(cornerRadius: 25)
                    .frame(height: 100, alignment: .center)
                
                ZStack {
                    Circle()
                    Text("Hello")
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                        .font(.largeTitle)
                    
                }.frame(height: 100, alignment: .center)
            }.frame( height: 500, alignment: .top)
        }
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
