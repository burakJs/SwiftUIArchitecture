//
//  TimerView.swift
//  SwiftUIArchitecture (iOS)
//
//  Created by Sr Burak on 18.08.2022.
//

import SwiftUI

// SubscriptionView
struct TimerView: View {

    @State private var timeText: String = "TIME"
    private let timer = Timer.publish(every: 1.0, on: .main, in: .common).autoconnect()
    @State private var colorValue: Int = 0
    private let paddingValue: CGFloat = 10
    
    private var colorIsOdd: Bool {
        return colorValue % 2 == 0
    }
    var body: some View {
        VStack {
            SubscriptionView(content: Text(timeText)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .bold()
                    .padding(paddingValue),
                publisher: timer) { time in
                timeText = time.formatted(date: Date.FormatStyle.DateStyle.abbreviated, time: Date.FormatStyle.TimeStyle.standard)
                colorValue += 1
            }
            
        }.background(colorIsOdd ? Color.red : Color.blue)
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
