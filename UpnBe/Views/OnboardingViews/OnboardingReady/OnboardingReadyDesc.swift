//
//  OnboardingReadyDesc.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/10.
//

import SwiftUI

struct OnboardingReadyDesc: View {
    var viewModel: OnboardingReadyViewModel
    var geometry: GeometryProxy
    
    var body: some View {
        ForEach(viewModel.getData(), id: \.self.icon) { data in
            HStack(spacing: 20) {
                Image(data.icon)
                    .resizable()
                    .frame(width: 40, height: 40)
                
                Text(data.text)
                    .font(.Heading5)
                    .foregroundColor(.basic)
            }
            .padding(.bottom, geometry.size.height * (44 / 740))
        }
    }
}

struct OnboardingReadyDesc_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            OnboardingReadyDesc(viewModel: OnboardingReadyViewModel(), geometry: geometry)
        }
    }
}
