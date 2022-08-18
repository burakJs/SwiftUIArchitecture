//
//  LabelView.swift
//  SwiftUIArchitecture (iOS)
//
//  Created by Sr Burak on 18.08.2022.
//

import SwiftUI

struct LabelView: View {
    var body: some View {
        VStack(alignment:.leading) {
            Label("Heart",systemImage: Hearts.heartCircle.rawValue)
                .labelStyle(DefaultLabelStyle())
            Label("Heart2",systemImage: Hearts.heartSuitFill.rawValue)
                .labelStyle(IconOnlyLabelStyle())
            Label("Heart3",systemImage:Hearts.heartCircleFill.rawValue)
                .labelStyle(TitleOnlyLabelStyle())
        }
    }
}

enum Hearts: String {
    case heartCircle = "heart.circle"
    case heartSuitFill = "suit.heart.fill"
    case heartCircleFill = "heart.circle.fill"
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView()
    }
}


