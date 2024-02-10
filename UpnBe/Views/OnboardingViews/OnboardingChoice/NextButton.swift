//
//  NextButton.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/10.
//

import SwiftUI

struct NextButton: View {    
    @ObservedObject var viewModel: OnboardingChoiceViewModel
    @Binding var isFirstLaunching: Bool
    
    var body: some View {
        GeometryReader { geometry in
            BackgroundColorButton(
                buttonText: "다음",
                action: {
                    viewModel.isNextButtonTapped = true
                },
                width: geometry.size.width,
                isActive: $viewModel.isActive
            )
            .disabled(!viewModel.isActive)
            .fullScreenCover(isPresented: $viewModel.isNextButtonTapped) {
                OnboardingReadyView(viewModel: OnboardingReadyViewModel(),
                                    isFirstLaunching: $isFirstLaunching)
                    .environmentObject(TabObservableObject())
            }
        }
        .frame(height: 50)
    }
}

struct NextButton_Previews: PreviewProvider {
    static var previews: some View {
        NextButton(viewModel: OnboardingChoiceViewModel(),
                   isFirstLaunching: .constant(false))
    }
}
