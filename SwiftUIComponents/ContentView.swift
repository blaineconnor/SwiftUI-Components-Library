//
//  ContentView.swift
//  SwiftUIComponents
//
//  Created by Fatih Emre Sarman on 10.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            InnerCircle().padding(EdgeInsets(top: -150, leading: 0, bottom: 0, trailing: 300))
            CustomCard(textOne: "Aboneliklerinizle ilgili\ntüm işlemlerinizi\nuygulamamızda\ngörüntüleyebilirsiniz", textTwo: "İşlem yapmak için lütfen giriş yapın", top: 44, leading: 22, bottom: 177, trailing: 77)
                .padding(.bottom, 0)
            HStack {
                MenuButton(iconName: "TarifeBilgileri", labelText: "Tarife\nBilgileri")
                MenuButton(iconName: "HizmetNoktaları", labelText: "Hizmet\nNoktaları")
                MenuButton(iconName: "GirisYap", labelText: "Giriş\nYap")
            }
            
            LongRectangleMenuButton(text: "Tarife Bilgileri", iconName: "TarifeBilgileri")
            NamedButton(textAlt: "350 ₺", textUst: "Borçlarım", icon: "billLira")
            CustomTextField1(placeholder: "blabal", width: 340, height: 47, cornerRadius: 10, opacity: 0.75, fontSize: 13)
            CustomBtn1()
            
            Tabbar1()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
