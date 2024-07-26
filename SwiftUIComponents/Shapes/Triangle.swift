//
//  Triangle.swift
//  SwiftUIComponents
//
//  Created by Fatih Emre Sarman on 10.06.2024.
//
import SwiftUI

struct Triangle: View {
    let width: CGFloat
    let height: CGFloat
    let offsetX: CGFloat
    let offsetY: CGFloat
    let opacity: Double
    
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 0, y: height))
            path.addLine(to: CGPoint(x: width, y: height))
            path.addLine(to: CGPoint(x: 0, y: 0))
        }
        .fill(Color.white.opacity(opacity))
        .frame(width: width, height: height)
        .offset(x: offsetX, y: offsetY)
    }
}
