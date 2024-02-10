//
//  SportButton.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/10.
//

import SwiftUI

struct SportButton: View {
    @ObservedObject var viewModel: OnboardingChoiceViewModel
    var sport: SportsType
    var geometry: GeometryProxy
    
    var body: some View {
        Button(action: {
            viewModel.sportButtonTapped(sport: sport)
        }) {
            sport.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: geometry.size.width * 164 / 360)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(viewModel.selectedSport == sport ? Color.basic : .clear, lineWidth: 2)
                )
        }
    }
}

struct SportButton_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            SportButton(viewModel: OnboardingChoiceViewModel(),
                        sport: .soccer,
                        geometry: geometry)
        }
    }
}
