//
//  Ring.swift
//  HoldingApp
//
//  Created by Fatih Emre Sarman on 13.09.2024.
//

import SwiftUI

struct Ring: Shape {
    var fillPoint: Double
    var delayPoint: Double = 0.5
    
    var animatableData: Double {
        get { return fillPoint }
        set { fillPoint = newValue }
    }
    
    func path(in rect: CGRect) -> Path {
        var start: Double
        let end = 360 * fillPoint
        
        if fillPoint > delayPoint {
            start = (2 * fillPoint) * 360
        } else {
            start = 0
        }
        
        var path = Path()
        
        path.addArc(
            center: CGPoint(
                x: rect.size.width/2,
                y: rect.size.height/2
            ),
            radius: rect.size.width/2,
            startAngle: .degrees(start),
            endAngle: .degrees(end),
            clockwise: false
        )
        return path
    }
}
