//
//  DataFetchView.swift
//  SwiftUIComponents
//
//  Created by Fatih Emre on 10.01.2025.
//

import SwiftUI

struct DataFetchView: View {
    @State private var isLoading = false
    @State private var data: [String] = []

    var body: some View {
        ZStack {
            VStack {
                if data.isEmpty && !isLoading {
                    Text("Veri bulunamadı.")
                        .foregroundColor(.gray)
                        .font(.headline)
                } else {
                    List(data, id: \.self) { item in
                        Text(item)
                    }
                }
            }

            // Yüklenme göstergesi
            if isLoading {
                ZStack {
                    Color.black.opacity(0.4)
                        .ignoresSafeArea()
                    
                    VStack {
                        ActivityIndicator()

                        Text("Veriler Yükleniyor...")
                            .foregroundColor(.white)
                            .padding(.top, 8)
                    }
                    .padding(20)
                    .background(Color.gray.opacity(0.8))
                    .cornerRadius(10)
                }
            }
        }
        .navigationTitle("Veri Çekme")
        .onAppear {
            fetchData()
        }
    }

    func fetchData() {
        isLoading = true
        data = []

        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.data = ["Veri 1", "Veri 2", "Veri 3", "Veri 4"]
            self.isLoading = false
        }
    }
}
