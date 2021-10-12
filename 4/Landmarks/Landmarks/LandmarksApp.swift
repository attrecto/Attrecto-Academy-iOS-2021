//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Kristof Varga on 2021. 09. 28..
//

import SwiftUI

@main
struct LandmarksApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
