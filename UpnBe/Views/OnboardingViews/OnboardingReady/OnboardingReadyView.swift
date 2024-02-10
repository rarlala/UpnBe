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
    
    func confirmButtonTapped() {
        isFirstLaunching.toggle()
    }
    
    var body: some View {
        ZStack {
            Color.background
            
            GeometryReader { geometry in
                VStack {
                    Spacer()
                    
                    OnboardingTitle(title: "나의 풋살 레벨은?")
                        .padding(.top, 100)
                    
                    Text("내 레벨을 알기까지 걸리는 시간은 단 2분\n단 20개의 영상을 보고 선택만 하세요!")
                        .foregroundColor(.basic)
                        .font(.notoSansMedium14)
                        .multilineTextAlignment(.center)
                        .frame(height: 44)
                        .padding(.bottom, 110)
                    
                    ForEach(viewModel.getData(), id: \.self.icon) { data in
                        OnboardingReadyLine(icon: data.icon, text: data.text)
                    }
                    
                    Spacer()
                    
                    Color1Button(
                        buttonText: "저장하기",
                        action: confirmButtonTapped,
                        width: geometry.size.width - 40
                    )
                    .padding(.horizontal, 20)
                    .padding(.bottom, 30)
                }
            }
        }
        .ignoresSafeArea()
    }
}

struct OnboardingReadyView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingReadyView(viewModel: OnboardingReadyViewModel(),
                            isFirstLaunching: .constant(true))
        .environmentObject(TabObservableObject())
    }
}
