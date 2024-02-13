//
//  OnboardingReadyView.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/05.
//

import SwiftUI

struct OnboardingReadyView: View {
    let viewModel: OnboardingReadyViewModel
    @Binding var isFirstLaunching: Bool
    
    init(viewModel: OnboardingReadyViewModel, isFirstLaunching: Binding<Bool>) {
        self.viewModel = viewModel
        self._isFirstLaunching = isFirstLaunching
    }
    
    private func confirmButtonTapped() {
        isFirstLaunching.toggle()
    }
    
    var body: some View {
        ZStack {
            Color.background.edgesIgnoringSafeArea(.all)
            
            GeometryReader { geometry in
                VStack(spacing: 0) {
                    OnboardingTitle(title: "나의 풋살 레벨은?")
                        .padding(.top, geometry.size.height * (100 / 740))
                    
                    Text("내 레벨을 알기까지 걸리는 시간은 단 2분\n단 20개의 영상을 보고 선택만 하세요!")
                        .foregroundColor(.basic)
                        .font(.Paragraph4)
                        .multilineTextAlignment(.center)
                        .frame(height: geometry.size.height * (44 / 740))
                        .padding(.bottom, geometry.size.height * (110 / 740))
                    
                    
                    OnboardingReadyDesc(viewModel: viewModel,
                                        geometry: geometry)
                    
                    Spacer()
                    
                    Color1Button(
                        buttonText: "저장하기",
                        action: confirmButtonTapped,
                        width: geometry.size.width - 40
                    )
                    .padding(.horizontal, geometry.size.height * (20 / 740))
                    .padding(.bottom, geometry.size.height * (30 / 740))
                }
            }
        }
    }
}

struct OnboardingReadyView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingReadyView(viewModel: OnboardingReadyViewModel(),
                            isFirstLaunching: .constant(true))
        .environmentObject(TabObservableObject())
    }
}
