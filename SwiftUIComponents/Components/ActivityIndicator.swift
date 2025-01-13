//
//  ActivityIndicator.swift
//  SwiftUIComponents
//
//  Created by Fatih Emre on 10.01.2025.
//


import SwiftUI

struct ActivityIndicator: View {
    @State private var fillPoint = 0.0
    
    private var animation: Animation {
        Animation
            .linear(duration: 2.0)
            .repeatForever(autoreverses: false)
    }
    
    var body: some View {
        
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.ringOne, .ringTwo]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .opacity(0)
            .edgesIgnoringSafeArea(.all)
            
            Image(.aTechLogo)
                .resizable()
                .frame(width: 51.65, height: 64)
            Ring(fillPoint: fillPoint)
                .stroke(LinearGradient(
                    gradient: Gradient(colors: [.ringOne, .ringTwo]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                ), lineWidth: 2.5)
                .frame(width: 100, height: 100)
                .onAppear() {
                    withAnimation(self.animation) {
                        self.fillPoint = 0.9999999898
                    }
                }
        }
    }
}

#Preview {
    ActivityIndicator()
}
