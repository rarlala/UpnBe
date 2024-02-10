//
//  OnboardingTitle.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/10.
//

import SwiftUI

struct OnboardingTitle: View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.notoSansExtraBold24)
            .foregroundColor(.color1)
            .multilineTextAlignment(.center)
            .padding(.vertical, 18)
    }
}

struct OnboardingTitle_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingTitle(title: "어떤 종목을 함께 할까요?")
    }
}
