//
//  LogInButton.swift
//  SwiftUIComponents
//
//  Created by Fatih Emre Sarman on 10.06.2024.
//

import SwiftUI

struct LogInButton: View {

    
    var body: some View {
        Button(action: {
            
        }) {
            Text("Giriş Yap")
                .foregroundColor(Color(hex: "34B5E7"))
                .font(.custom("Poppins-SemiBold", size: 12))
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .background(Color.white)
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color(hex: "34B5E7"), lineWidth: 1)
                )
        }
        .frame(width: 112, height: 32)
        .shadow(color: Color.black.opacity(0.25), radius: 2, x: 0, y: 1)
    }
}

#Preview{
    LogInButton()
}
