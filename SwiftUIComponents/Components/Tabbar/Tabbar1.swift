//
//  Tabbar1.swift
//  SwiftUIComponents
//
//  Created by Fatih Emre Sarman on 24.07.2024.
//

import SwiftUI

struct Tabbar1: View {
    var body: some View {
        ZStack {
            ZStack {
                HStack(spacing: 44) {
                    Image("Home")
                    Image("HizmetNoktaları")
                    Image("TarifeBilgileri")
                    Image("GirisYap")
                }
                .frame(width: 327, height: 36, alignment: .center)
            }
            .frame(width: 393, height: 96, alignment: .center)
            .background(Color.white)
            
            .overlay(
                TopCornersBorder(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 3)
                    .frame(width: 395, height: 96)
            )
        }.cornerRadius(10, corners: [.topLeft, .topRight])
    }    
}

struct TopCornersBorder: InsettableShape {
    var cornerRadius: CGFloat
    var insetAmount: CGFloat = 0
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        // Adjust rect for inset
        let adjustedRect = rect.insetBy(dx: insetAmount, dy: insetAmount)
        
        // Top left corner
        path.move(to: CGPoint(x: 0, y: cornerRadius + insetAmount))
        path.addArc(center: CGPoint(x: cornerRadius + insetAmount, y: cornerRadius + insetAmount), radius: cornerRadius, startAngle: .degrees(180), endAngle: .degrees(270), clockwise: false)
        
        // Top edge
        path.addLine(to: CGPoint(x: adjustedRect.width - cornerRadius, y: insetAmount))
        
        // Top right corner
        path.addArc(center: CGPoint(x: adjustedRect.width - cornerRadius, y: cornerRadius + insetAmount), radius: cornerRadius, startAngle: .degrees(270), endAngle: .degrees(360), clockwise: false)
        
        // Moving down to avoid right border
        path.move(to: CGPoint(x: adjustedRect.width, y: cornerRadius + insetAmount))
        
        return path
    }
    
    func inset(by amount: CGFloat) -> some InsettableShape {
        var insettedShape = self
        insettedShape.insetAmount += amount
        return insettedShape
    }
}

#Preview {
    Tabbar1()
}
