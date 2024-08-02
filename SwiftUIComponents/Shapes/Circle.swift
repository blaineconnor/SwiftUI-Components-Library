//
//  Circle.swift
//  SwiftUIComponents
//
//  Created by Fatih Emre Sarman on 30.07.2024.
//

import SwiftUI

struct ResizableCircle: View {
    var color: String
    var opacity: Double
    var lineWidth: CGFloat
    var diameter: CGFloat

    var body: some View {
        let fillColor = Color(hex: color).opacity(opacity)
        let borderColor = Color(hex: color).opacity(opacity)
        
        return Circle()
            .fill(fillColor)
            .frame(width: diameter, height: diameter)
            .overlay(
                Circle()
                    .stroke(borderColor, lineWidth: lineWidth)
            )
    }
}


struct blaView: View {
    @State private var color: String = "#FF0000"
        @State private var opacity: Double = 1.0

        var body: some View {
            VStack {
                ResizableCircle(color: color, opacity: opacity, lineWidth: 10, diameter: 100)
                
                Button(action: {
                    color = color == "#FF0000" ? "#0000FF" : "#FF0000"
                    opacity = opacity == 1.0 ? 0.5 : 1.0
                }) {
                    Text("Change Colors and Opacity")
                        .padding()
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        blaView()
    }
}

