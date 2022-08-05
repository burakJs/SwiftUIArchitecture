//
//  CircleTextImage.swift
//  SwiftUIArchitecture (iOS)
//
//  Created by Sr Burak on 5.08.2022.
//

import SwiftUI
import Kingfisher

struct CircleTextImage: View {
    let title: String
    let imageUrl: String
    
    var body: some View {
        VStack {
            KFImage(URL(string: imageUrl)!)
                .fade(duration: 0.25)
                .resizable()
                .clipShape(Circle())
                .shadow(radius: 20)
            Text(title)
                .bold()
                .italic()
                .font(.title)
        }
    }
}

struct CircleTextImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleTextImage(title: "Hello", imageUrl: "https://picsum.photos/id/237/200/300")
            .frame(width: 200, height: 200, alignment: .center).previewLayout(.sizeThatFits)
    }
}
