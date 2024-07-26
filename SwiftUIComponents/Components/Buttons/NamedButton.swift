//
//  NamedButton.swift
//  SwiftUIComponents
//
//  Created by Fatih Emre Sarman on 24.07.2024.
//

import SwiftUI

struct NamedButton: View {
    var textAlt: String
    var textUst: String
    var icon: String
    
    var body: some View {
            HStack(spacing: 0) {                
                ZStack {
                    Rectangle()
                        .fill(Color(hex: "34B5E7"))
                        .frame(width: 24, height: 40)
                        .cornerRadius(10, corners: [.topLeft, .bottomLeft])
                    
                    Image(icon)
                        .resizable()
                        .frame(width: 15, height: 15)
                        .foregroundColor(.white)
                        .padding(.leading, 2)
                }
                .frame(width: 24, height: 40)
                .padding(.leading, -4)
                VStack(spacing: 0) {
                    Text(textUst)
                        .font(.custom("Poppins-Regular", size: 8))
                        .foregroundColor(Color(hex: "34B5E7"))
                    
                    Text(textAlt)
                        .font(.custom("Poppins-Regular", size: 12))
                        .foregroundColor(Color(hex: "34B5E7"))
                }
                .frame(width:100,height: 30)
                .padding(.leading, 10)
                .padding(.trailing, 10)
                .background(Color.white)
                .cornerRadius(10)
            }.frame(width: 147.42, height: 40)
                .background(Color.white)
                .cornerRadius(10)        
    }
}

#Preview {
    NamedButton(textAlt: "350 ₺", textUst: "Borçlarım", icon: "billLira")
}
