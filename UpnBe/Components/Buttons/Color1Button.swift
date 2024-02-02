//
//  Color1Button.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/02.
//

import SwiftUI

struct Color1Button: View {
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
                .foregroundColor(.background)
            
        }
        .frame(width: width, height: height)
        .background(Color.color1)
        .cornerRadius(15)
    }
}

struct Color1Button_Previews: PreviewProvider {
    static var previews: some View {
        Color1Button(buttonText: "확인", action: { print(1) }, width: 100, height: 50)
    }
}
