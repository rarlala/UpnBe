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
    var height: CGFloat = 50
    var isActive: Binding<Bool>?
    
    var body: some View {
        Button {
            action()
        } label: {
            Spacer()
            Text(buttonText)
                .multilineTextAlignment(.center)
                .font(.Heading3)
                .foregroundColor(isActive?.wrappedValue == true ? .background : .background5)
            Spacer()
        }
        .frame(width: width, height: height)
        .background(isActive?.wrappedValue == true ? Color.color1 : Color.background2)
        .cornerRadius(15)
        .contentShape(Rectangle())
    }
}

struct BackgroundColorButton_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundColorButton(buttonText: "취소", action: { print(1) }, width: 100)
    }
}
