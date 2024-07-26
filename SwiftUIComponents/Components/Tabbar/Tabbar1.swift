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
            Color(hex: "D8D8D8")
                .edgesIgnoringSafeArea(.all)
            
            ZStack {
                HStack(spacing: 44) {
                    Image("Home")
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    Image("HizmetNoktaları")
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    Image("TarifeBilgileri")
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    Image("GirisYap")
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                }
                .frame(width: 327, height: 36, alignment: .center)
            }
            .frame(width: 393, height: 96, alignment: .center)
            .background(Color(hex: "ffffff"))
            .cornerRadius(10, corners: [.topLeft, .topRight])
            .overlay( RoundedRectangle(cornerRadius: 10).strokeBorder(Color(hex: "34B5E7"))
              )
        }
    }
}

#Preview {
    Tabbar1()
}
