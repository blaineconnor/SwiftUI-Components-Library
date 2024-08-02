//
//  PlaceholderModifier.swift
//  SwiftUIComponents
//
//  Created by Fatih Emre Sarman on 30.07.2024.
//

import SwiftUI

struct PlaceholderModifier: ViewModifier {
    var showPlaceholder: Bool
    var placeholder: String
    var opacity: Double
    var font: Font

    func body(content: Content) -> some View {
        ZStack(alignment: .leading) {
            if showPlaceholder {
                Text(placeholder)
                    .foregroundColor(Color.gray.opacity(opacity))
                    .font(font)
                    .padding(.leading, 8)
            }
            content
                .foregroundColor(Color.black)
                .font(font)
                .padding(8)
        }
    }
}
