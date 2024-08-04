//
//  CryptoTrackerApp.swift
//  CryptoTracker
//
//  Created by Navdeep Singh on 16/06/24.
//

import SwiftUI

@main
struct CryptoTrackerApp: App {
    let persistenceController = PersistenceController.shared
    
    // since viewmodel every view use krega toh rather than giving it all, we have provided as environment Object
    @StateObject private var viewModel = HomeViewModel()

    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(viewModel)
        }
    }
}
