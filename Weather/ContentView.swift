//
//  ContentView.swift
//  Weather
//
//  Created by Jordan Haynes on 9/28/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue,.teal], startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Miami, Florida")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 10) {
                    Image(systemName: "cloud.sun.rain.fill")
                        .font(.system(size: 100))
                        .symbolRenderingMode(.multicolor)
                    
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
                
                Spacer()
                
                Button("Change Day Time", systemImage: "gear") {
                    print("Hello Jordan!")
                }
                .font(.title3)
                .foregroundColor(.white)
                .bold()
                .frame(width: 280, height: 50)
                .background(.black)
                .cornerRadius(10)
            }
        }
    }
}

#Preview {
    ContentView()
}
