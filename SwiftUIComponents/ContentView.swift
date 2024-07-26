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
            
            CustomCard(textOne: "Aboneliklerinizle ilgili\ntüm işlemlerinizi\nuygulamamızda\ngörüntüleyebilirsiniz", textTwo: "İşlem yapmak için lütfen giriş yapın", top: 44, leading: 22, bottom: 177, trailing: 77)
            HStack {
                MenuButton(iconName: "TarifeBilgileri", labelText: "Tarife\nBilgileri")
                MenuButton(iconName: "HizmetNoktaları", labelText: "Hizmet\nNoktaları")
                MenuButton(iconName: "GirisYap", labelText: "Giriş\nYap")
            }
            
            LongRectangleMenuButton(text: "Tarife Bilgileri", iconName: "TarifeBilgileri")
            NamedButton(textAlt: "350 ₺", textUst: "Borçlarım", icon: "billLira")
            
            Tabbar1()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
