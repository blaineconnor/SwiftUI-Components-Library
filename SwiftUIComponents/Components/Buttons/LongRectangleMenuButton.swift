//
//  LongRectangleMenuButton.swift
//  SwiftUIComponents
//
//  Created by Fatih Emre Sarman on 10.06.2024.
//

import SwiftUI

struct LongRectangleMenuButton: View {
    var text: String
    var iconName: String
    
    var body: some View {
        HStack {
            ZStack {
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color(hex: "34B5E7"), Color(hex: "9CC386")]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: 28, height: 28)
                
                Image(systemName: iconName)
                    .resizable()
                    .frame(width: 14, height: 14)
                    .foregroundColor(.white)
            }
            .padding(.leading, 8)
            
            Text(text)
                .font(.custom("Poppins-Medium", size: 14))
                .foregroundColor(.black)
                .padding(.leading, 15)
            
            Spacer()
        }
        .frame(width: 341, height: 40)
        .background(Color.white)
        .cornerRadius(5)
        .shadow(color: Color.black.opacity(0.25), radius: 4, x: 2, y: 4)
    }
}

#Preview {
    LongRectangleMenuButton(text: "Aboneliklerim", iconName: "newspaper")
}
