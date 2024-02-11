//
//  SportList.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/10.
//

import SwiftUI

struct SportList: View {
    @ObservedObject var viewModel: OnboardingChoiceViewModel
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        GeometryReader { geometry in
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(SportsType.allCases, id: \.self) { sport in
                    
                    SportButton(viewModel: viewModel,
                                sport: sport,
                                geometry: geometry)
                        .sheet(isPresented: $viewModel.isShowPopup) {
                            if let sport = viewModel.selectedSport {
                                TwoButtonBottomSheet(
                                    isShowTextField: true,
                                    text: "\(sport.name)도 빠르게 준비중이에요.\n\(sport.name) 출시 알림을 받고싶다면\n연락처를 남겨주세요.",
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

struct SportList_Previews: PreviewProvider {
    static var previews: some View {
        SportList(viewModel: OnboardingChoiceViewModel())
    }
}
