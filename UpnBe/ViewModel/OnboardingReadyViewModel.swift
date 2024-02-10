//
//  OnboardingReadyViewModel.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/10.
//

import SwiftUI

struct OnboardingReadyViewModel {
    private let data = OnboardingReadyViewData()
    
    func getData() -> [OnboardingReadyData] {
        return data.datas
    }
}
