//
//  UpnBeApp.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/01.
//

import SwiftUI

@main
struct UpnBeApp: App {
    @AppStorage("_isFirstLaunching") var isFirstLaunching: Bool = true
    @State private var isShowLaunchScreen = true
    
    init() {
        UITabBar.appearance().backgroundColor = .black
    }
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                if isShowLaunchScreen {
                    LaunchView()
                } else {
                    if isFirstLaunching {
                        OnboardingChoiceView(viewModel: OnboardingChoiceViewModel(),
                                             isFirstLaunching: $isFirstLaunching)
                    } else {
                        ContentView()
                    }
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
