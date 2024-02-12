//
//  OnboardingReadyDesc.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/10.
//

import SwiftUI

struct OnboardingReadyDesc: View {
    var viewModel: OnboardingReadyViewModel
    
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
            .padding(.bottom, 44)
        }
    }
}

struct OnboardingReadyDesc_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingReadyDesc(viewModel: OnboardingReadyViewModel())
    }
}
