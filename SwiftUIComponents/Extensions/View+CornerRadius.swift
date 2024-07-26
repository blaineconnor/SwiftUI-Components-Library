//
//  View+CornerRadius.swift
//  SwiftUIComponents
//
//  Created by Fatih Emre Sarman on 24.07.2024.
//

import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}
