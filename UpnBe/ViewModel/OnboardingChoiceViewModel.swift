//
//  OnboardingChoiceViewModel.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/10.
//

import SwiftUI

class OnboardingChoiceViewModel: ObservableObject {
    @Published var isActive: Bool = false
    @Published var isShowPopup: Bool = false
    @Published var isNextButtonTapped: Bool = false
    @Published var isPopupButtonTapped: Bool = false
    @Published var selectedSport: SportsType?
    
    func sportButtonTapped(sport: SportsType) {
        selectedSport = sport
        
        if selectedSport == .soccer {
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
