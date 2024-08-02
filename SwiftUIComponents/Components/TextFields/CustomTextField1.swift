//
//  CustomTextField1.swift
//  SwiftUIComponents
//
//  Created by Fatih Emre Sarman on 30.07.2024.
//

import SwiftUI

struct CustomTextField1: View {
    @State private var text: String = ""
    var placeholder: String
    var width: CGFloat
    var height: CGFloat
    var cornerRadius: CGFloat
    var opacity: Double
    var fontSize: CGFloat

    var body: some View {
        TextField("", text: $text)
            .modifier(PlaceholderModifier(
                showPlaceholder: text.isEmpty,
                placeholder: placeholder,
                opacity: opacity,
                font: .custom("Poppins-Medium", size: fontSize)
            ))
            .frame(width: width, height: height)
            .background(Color.white)
            .cornerRadius(cornerRadius)
            
    }
}

struct CustomTF1: View {
    var body: some View {
        CustomTextField1(
            placeholder: "Enter your text here...",
            width: 340,
            height: 47,
            cornerRadius: 10,
            opacity: 0.75,
            fontSize: 13
        )
        .padding()
        .background(Color(hex: "ededed"))
    }
}

#Preview {
    CustomTF1()
}
