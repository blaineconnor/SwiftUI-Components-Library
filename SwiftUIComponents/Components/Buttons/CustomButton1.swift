//
//  CustomButton1.swift
//  SwiftUIComponents
//
//  Created by Fatih Emre Sarman on 30.07.2024.
//

import SwiftUI

struct CustomButton1: View {
    var color: String
    var opacity: Double
    var title: String
    var width: CGFloat
    var height: CGFloat
    var fontSize: CGFloat

    var body: some View {
        Text(title)
            .font(.custom("Poppins-Medium", size: fontSize))
            .frame(width: width, height: height)
            .background(Color(hex: color).opacity(opacity))
            .foregroundColor(.white)
    }
}

struct CustomBtn1: View {
    var body: some View {
        CustomButton1(
            color: "55847A",
            opacity: 0.97,
            title: "Get Started",
            width: 220,
            height: 44,
            fontSize: 14
        )
    }
}

struct CustomBtn1_Previews: PreviewProvider {
    static var previews: some View {
    CustomBtn1()
    }
}
