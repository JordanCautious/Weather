//
//  ContentView.swift
//  Weather
//
//  Created by Jordan Haynes on 9/28/23.
//

import SwiftUI

struct ContentView: View {
    @State private var pressed = 0
    @State private var isNight = false
    @State private var noBounce = false
    
    var body: some View {
        ZStack {
            if isNight == true {
                BackgroundView(topColor: .black, bottomColor: .blue)
            } else {
                BackgroundView(topColor: .blue, bottomColor: .teal)
            }
            
            VStack {
                Text("Miami, Florida")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 10) {
                    if isNight == true {
                        Image(systemName: "moon.stars.fill")
                            .frame(width: 175, height: 175)
                            .font(.system(size: 100))
                            .symbolRenderingMode(.multicolor)
                            .symbolEffect(.bounce, value: pressed)
                    } else {
                        Image(systemName: "cloud.sun.rain.fill")
                            .frame(width: 175, height: 175)
                            .font(.system(size: 100))
                            .symbolRenderingMode(.multicolor)
                            .symbolEffect(.bounce, value: pressed)
                    }
                    
                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                
                HStack(spacing: 15) {
                    DayView(day: "Tue", weather: "cloud.sun.fill", temperature: 74)
                    DayView(day: "Wed", weather: "sun.max.fill", temperature: 88)
                    DayView(day: "Thu", weather: "wind.snow", temperature: 55)
                    DayView(day: "Fri", weather: "sunset.fill", temperature: 60)
                    DayView(day: "Sat", weather: "snow", temperature: 25)
                }
                .foregroundColor(.white)
                .padding()
                .symbolRenderingMode(.multicolor)
                .symbolEffect(.bounce, value: pressed)
                
                Spacer()
                
                Toggle("Disable Bounce Animation?", isOn: $noBounce)
                    .foregroundColor(.white)
                    .padding()
                
                Button("Change Day Time", systemImage: "gear") {
                    isNight.toggle()
                
                    if noBounce == true {
                        // Do Nothing
                    } else {
                        pressed += 1
                    }
                }
                .font(.title3)
                .foregroundColor(.white)
                .bold()
                .frame(width: 280, height: 50)
                .background(.black)
                .cornerRadius(10)
                .symbolEffect(.bounce, value: pressed)
            }
        }
    }
}

#Preview {
    ContentView()
}
