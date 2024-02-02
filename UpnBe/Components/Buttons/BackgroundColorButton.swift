//
//  BackgroundColorButton.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/02.
//

import SwiftUI

struct BackgroundColorButton: View {
    var buttonText: String
    var action: () -> Void
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(buttonText)
                .multilineTextAlignment(.center)
                .font(.notoSansExtraBold18)
                .foregroundColor(.background5)
            
        }
        .frame(width: width, height: height)
        .background(Color.background2)
        .cornerRadius(15)
    }
}

struct BackgroundColorButton_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundColorButton(buttonText: "취소", action: { print(1) }, width: 100, height: 50)
    }
}
