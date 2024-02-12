//
//  SportsButton.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/10.
//

import SwiftUI

struct SportsButton: View {
    @ObservedObject var viewModel: OnboardingChoiceViewModel
    var sports: SportsType
    var geometry: GeometryProxy
    
    var body: some View {
        Button(action: {
            viewModel.sportsButtonTapped(sports: sports)
        }) {
            sports.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: geometry.size.width * 164 / 360)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(viewModel.selectedSports == sports ? Color.basic : .clear, lineWidth: 2)
                )
        }
    }
}

struct SportsButton_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            SportsButton(viewModel: OnboardingChoiceViewModel(),
                        sports: .soccer,
                        geometry: geometry)
        }
    }
}
