//
//  CryptoTrackerApp.swift
//  CryptoTracker
//
//  Created by Kadir Yildiz on 28/10/2024.
//

import SwiftUI

@main
struct CryptoTrackerApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
