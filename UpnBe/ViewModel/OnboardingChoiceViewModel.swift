//
//  OnboardingChoiceViewModel.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/10.
//

import SwiftUI

final class OnboardingChoiceViewModel: ObservableObject {
    @Published var isActive: Bool = false
    @Published var isShowPopup: Bool = false
    @Published var isNextButtonTapped: Bool = false
    @Published var isPopupButtonTapped: Bool = false
    @Published var selectedSports: SportsType?
    
    func sportsButtonTapped(sports: SportsType) {
        selectedSports = sports
        
        if selectedSports == .soccer {
            isActive = true
        } else {
            isActive = false
            isShowPopup = true
        }
    }
    
    func popupButtonTapped() {
        isPopupButtonTapped = true
    }
}
