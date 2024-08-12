//
//  GradienButton.swift
//  SwiftUIComponents
//
//  Created by Fatih Emre Sarman on 12.08.2024.
//

import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                configuration.isPressed ?
                
                LinearGradient(
                    colors: [
                        .colorGrayLight,
                        .colorGrayMedium
                    ],
                    startPoint: .topLeading,
                    endPoint: .bottomLeading
                )
                
                :
                    LinearGradient(
                        colors: [
                            .colorGrayLight,
                            .colorGrayMedium
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
            )
            .cornerRadius(40)
    }
}


struct PreviewGradientButton: View {
    
    var body: some View {
        Button{
            // ACTION: Generate a Random Number
        } label: {
            Text("Gradient Button")
                .font(.title2)
                .fontWeight(.heavy)
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            .colorGreenLight,
                            .colorGreenMedium
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .shadow(
                    color: .black.opacity(0.25),
                    radius: 0.25, x:1, y: 2
                )
        }
        .buttonStyle(GradientButton())
    }
}

#Preview {
    PreviewGradientButton()
}
