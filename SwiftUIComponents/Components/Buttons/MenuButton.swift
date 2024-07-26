//
//  CustomButton.swift
//  SwiftUIComponents
//
//  Created by Fatih Emre Sarman on 10.06.2024.
//

import SwiftUI

struct MenuButton: View {
    let iconName: String
    let labelText: String
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color(hex: "E7A142").opacity(0.7), lineWidth: 1)
                .frame(width: 108, height: 108)
            
            VStack(alignment: .leading, spacing: 16) {
                Image(iconName) // Dinamik ikon adı
                    .resizable()
                    .frame(width: 24, height: 24)
                    .padding(.top, 16)
                    .padding(.leading, 16)
                
                Text(labelText) // Dinamik yazı
                    .font(.custom("Poppins-SemiBold", size: 14))
                    .padding(.leading, 16)
            }
        }
    }
}

struct MenuButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            MenuButton(iconName: "TarifeBilgileri", labelText: "Tarife\nBilgileri")
        }
    }
}
