//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by Anna Melekhina on 23.02.2022.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    @StateObject private var userManager = UserManager()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(userManager)
        }
    }
}
