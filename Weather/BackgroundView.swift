//
//  BackgroundView.swift
//  Weather
//
//  Created by Jordan Haynes on 9/28/23.
//

import SwiftUI

struct BackgroundView: View {
    var topColor: Color
    var bottomColor: Color
    
    
    
    var body: some View {
        LinearGradient(colors: [topColor, bottomColor], startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    BackgroundView(topColor: .blue, bottomColor: .teal)
}
