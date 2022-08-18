//
//  TextEditingView.swift
//  SwiftUIArchitecture (iOS)
//
//  Created by Sr Burak on 18.08.2022.
//

import SwiftUI

struct TextEditingView: View {
    @State private var editorValue: String = ""

    var body: some View {
        VStack {
            TextEditor(text: $editorValue)
                .frame(width: 200, height: 200, alignment: .center)
                .lineLimit(3)
                .padding()
                .background(Color.green)
        }
    }
}

struct TextEditingView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditingView()
    }
}
