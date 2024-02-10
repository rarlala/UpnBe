//
//  OnboardingReadyData.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/10.
//

import Foundation

struct OnboardingReadyViewData {
    let datas: [OnboardingReadyData] = [
        OnboardingReadyData(icon: "icon-up", text: "동작을 잘 따라할 수 있다면?"),
        OnboardingReadyData(icon: "icon-be", text: "연습이 조금 더 필요하다면?"),
        OnboardingReadyData(icon: "icon-save-file", text: "계속 저장하고 보고 싶을땐?")
    ]
}
