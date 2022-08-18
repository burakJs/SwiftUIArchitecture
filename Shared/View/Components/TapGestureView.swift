//
//  TapGestureView.swift
//  SwiftUIArchitecture (iOS)
//
//  Created by Sr Burak on 18.08.2022.
//

import SwiftUI

struct TapGestureView: View {
    @State private var isTap: Bool = false
    private var onTap: some Gesture {
        TapGesture(count: 3).onEnded { _ in
            self.isTap.toggle()
        }
    }

    var body: some View {

        ZStack {
            RoundedRectangle(cornerSize: .init(width: 50, height: 20))
                .fill(isTap ? .green : .red)
                .frame(width: 200, height: 200, alignment: .center)
                .gesture(onTap)
            Text(isTap ? "Opened" : "Closed")
                .foregroundColor(.white)
                .font(.largeTitle)
                .bold()
        }

    }
}

struct TapGestureView_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureView()
    }
}
