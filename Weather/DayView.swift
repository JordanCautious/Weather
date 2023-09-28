//
//  DayView.swift
//  Weather
//
//  Created by Jordan Haynes on 9/28/23.
//

import SwiftUI

struct DayView: View {
    let day: String
    let weather: String
    let temperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Text(day)
                .textCase(.uppercase)
                .font(.title3)
            Image(systemName: weather)
                .font(.largeTitle)
            Text("\(temperature)°")
                .font(.largeTitle)
                .bold()
        }
    }
}

#Preview {
    DayView(day: "TUE", weather: "cloud.drizzle.fill", temperature: 76)
}
