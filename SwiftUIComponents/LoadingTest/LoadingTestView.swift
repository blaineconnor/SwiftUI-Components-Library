//
//  ContentView.swift
//  SwiftUIComponents
//
//  Created by Fatih Emre on 10.01.2025.
//

import SwiftUI

struct LoadingTestView: View {
    var body: some View {
        ZStack {
            // Ana içerik burada
            NavigationView {
                VStack {
                    NavigationLink("Veri Çekme Sayfası", destination: DataFetchView())
                        .padding()
                }
            }
        }
    }
}

