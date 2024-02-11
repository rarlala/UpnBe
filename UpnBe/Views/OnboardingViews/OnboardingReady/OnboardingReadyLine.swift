//
//  OnboardingReadyLine.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/10.
//

import SwiftUI

struct OnboardingReadyLine: View {
    var icon: String
    var text: String
    
    var body: some View {
        HStack(spacing: 20) {
            Image(icon)
                .resizable()
                .frame(width: 40, height: 40)
            
            Text(text)
                .font(.Heading5)
                .foregroundColor(.basic)
        }
        .padding(.bottom, 44)
    }
}

struct OnboardingReadyLine_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingReadyLine(icon: "icon-up", text: "Test")
    }
}
