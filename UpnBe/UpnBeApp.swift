//
//  UpnBeApp.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/01.
//

import SwiftUI

@main
struct UpnBeApp: App {
    @State private var isShowLaunchScreen = true
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                if isShowLaunchScreen {
                    LaunchView()
                } else {
                    ContentView()
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    withAnimation {
                        isShowLaunchScreen = false
                    }
                }
            }
        }
    }
}
