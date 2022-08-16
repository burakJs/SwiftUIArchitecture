//
//  FoxView.swift
//  SwiftUIArchitecture (iOS)
//
//  Created by Sr Burak on 16.08.2022.
//

import SwiftUI
import Kingfisher
import ActivityIndicatorView

struct RandomFoxView: View {
    
    private let title: String = "My Fox"

    @StateObject private var foxViewModel: FoxViewModel = FoxViewModel(service: FoxService())
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .font(.largeTitle )
                Spacer()
                Button("Refresh") {
                    foxViewModel.refreshFox()
                }
            }.padding(.all)
            Spacer()
            if foxViewModel.isCompleted ?? false {
                FoxView(imageLink: foxViewModel.fox?.image)
            }else {
                LoadingView()
            }
            Spacer()
        }
    }
}

struct FoxView_Previews: PreviewProvider {
    static var previews: some View {
        RandomFoxView()
    }
}

struct LoadingView: View {
    var body: some View {
        ActivityIndicatorView(isVisible: .constant(true), type: .growingCircle)
            .frame(width: 100, height: 100, alignment: .center)
    }
}

struct FoxView: View {
    let imageLink: String?
    var body: some View {
        GeometryReader { geometry in
            KFImage(URL(string: imageLink ?? "")).resizable().frame(height: geometry.size.height * 0.4)
        }
    }
}
