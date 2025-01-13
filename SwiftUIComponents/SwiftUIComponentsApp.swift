//
//  SwiftUIComponentsApp.swift
//  SwiftUIComponents
//
//  Created by Fatih Emre Sarman on 10.06.2024.
//

import SwiftUI

@main
struct SwiftUIComponentsApp: App {
    @AppStorage("isLoading") var isLoading: Bool = false
    
    var body: some Scene {
        WindowGroup {
            LoadingTestView()
        }
    }
}
