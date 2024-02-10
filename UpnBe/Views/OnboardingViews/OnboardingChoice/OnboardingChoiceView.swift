//
//  OnboardingChoiceView.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/02.
//

import SwiftUI

struct OnboardingChoiceView: View {
    @ObservedObject var viewModel: OnboardingChoiceViewModel
    @Binding var isFirstLaunching: Bool
    
    init(viewModel: OnboardingChoiceViewModel, isFirstLaunching: Binding<Bool>) {
        self.viewModel = viewModel
        self._isFirstLaunching = isFirstLaunching
    }
    
    var body: some View {
        ZStack {
            Color.background.edgesIgnoringSafeArea(.all)
            
            VStack {
                OnboardingTitle(title: "어떤 종목을 함께 할까요?")
                    .padding(.top, 100)
                    .padding(.bottom, 80)
                
                SportList(viewModel: viewModel)
                
                Spacer()
                
                NextButton(viewModel: viewModel,
                           isFirstLaunching: $isFirstLaunching)
            }
            .padding(.horizontal, 10)
            .padding(.bottom, 30)
        }
    }
}

struct OnboardingChoiceView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingChoiceView(viewModel: OnboardingChoiceViewModel(),
                             isFirstLaunching: .constant(false))
    }
}
