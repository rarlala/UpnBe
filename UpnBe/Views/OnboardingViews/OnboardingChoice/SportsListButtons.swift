//
//  SportsListButtons.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/10.
//

import SwiftUI

struct SportsListButtons: View {
    @ObservedObject var viewModel: OnboardingChoiceViewModel
    
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        GeometryReader { geometry in
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(SportsType.allCases, id: \.self) { sports in
                    
                    SportsButton(viewModel: viewModel,
                                sports: sports,
                                geometry: geometry)
                        .sheet(isPresented: $viewModel.isShowPopup) {
                            if let sports = viewModel.selectedSports {
                                TwoButtonBottomSheet(
                                    isShowTextField: true,
                                    text: "\(sports.name)도 빠르게 준비중이에요.\n\(sports.name) 출시 알림을 받고싶다면\n연락처를 남겨주세요.",
                                    confirmButtonText: "미리알림받기",
                                    cancelButtonText: "종목출시만 요청",
                                    confirmAction: viewModel.popupButtonTapped,
                                    cancelAction: viewModel.popupButtonTapped
                                )
                            }
                        }
                }
            }
        }
    }
}

struct SportsListButtons_Previews: PreviewProvider {
    static var previews: some View {
        SportsListButtons(viewModel: OnboardingChoiceViewModel())
    }
}
