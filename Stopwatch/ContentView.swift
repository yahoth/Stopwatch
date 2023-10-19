//
//  ContentView.swift
//  Stopwatch
//
//  Created by TAEHYOUNG KIM on 10/18/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var stopwatch = Stopwatch()
    var body: some View {
        VStack(spacing: 100) {
            Text(stopwatch.isDisplayingTimeInHHMMSS ? stopwatch.hhmmss : stopwatch.resultTime)
                .font(.system(size: 50, weight: .bold))
                .frame(maxWidth: .infinity)
                .onTapGesture {
                    stopwatch.isDisplayingTimeInHHMMSS.toggle()
                }

            HStack {
                Button {
                    stopwatch.startAndPause()
                } label: {
                    Image(systemName: stopwatch.isPaused ? "play.circle.fill" : "pause.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50)
                }

                Button {
                    stopwatch.stop()
                } label: {
                    Image(systemName: "stop.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50)
                        .tint(.red)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
