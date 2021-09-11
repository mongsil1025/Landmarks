//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 정선민 on 2021/09/01.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData() // initialize a model object only once
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
