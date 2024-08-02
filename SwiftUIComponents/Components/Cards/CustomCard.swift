//
//  CustomCard.swift
//  SwiftUIComponents
//
//  Created by Fatih Emre Sarman on 10.06.2024.
//

import SwiftUI

struct CustomCard: View {
    var textOne: String
    var textTwo: String
    var top: CGFloat
    var leading: CGFloat
    var bottom: CGFloat
    var trailing: CGFloat
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(hex: "34B5E7"))
                .frame(width: 341, height: 353)
                .shadow(color: Color.black.opacity(0.25), radius: 2, x: 0, y: 1) // Drop shadow
            
            VStack(alignment: .leading, spacing: 20) {
                Text(textOne)
                    .font(.custom("Poppins-Bold", size: 22))
                    .padding(.horizontal, 22)
                    .foregroundColor(.white)
                Text(textTwo)
                    .font(.custom("Poppins-Medium", size: 13))
                    .padding(.horizontal, 22)
                    .foregroundColor(.white)
            }.padding(EdgeInsets(top: top, leading: leading, bottom: bottom, trailing: trailing))
            
            LogInButton().padding(EdgeInsets(top: 237, leading: 22, bottom: 84, trailing: 208))
            
            Triangle(width: 600, height: 500, offsetX: -100, offsetY: 0, opacity: 0.08)
            Triangle(width: 600, height: 500, offsetX: -25, offsetY: 0, opacity: 0.1)
            Triangle(width: 600, height: 500, offsetX: 50, offsetY: 0, opacity: 0.1)
            
            
            .padding(.top, 34)
            .padding(.leading, 22)
        }.frame(width: 341,height: 353)
    }
}

#Preview{
    CustomCard(textOne: "Aboneliklerinizle ilgili\ntüm işlemlerinizi\nuygulamamızda\ngörüntüleyebilirsiniz", textTwo: "İşlem yapmak için lütfen giriş yapın", top: 44, leading: 22, bottom: 177, trailing: 77)
}
