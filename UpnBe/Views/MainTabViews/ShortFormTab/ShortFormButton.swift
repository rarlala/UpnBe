//
//  ShortFormButton.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/07.
//

import SwiftUI

struct ShortFormButton: View {
    @State var isActive: Bool = false
    
    var defaultImage: String
    var activeImage: String
    
    var buttonText: String
    var buttonAction: () -> Void
    
    var body: some View {
        Button {
            isActive.toggle()
            buttonAction()
        } label: {
            VStack {
                Image(isActive ? activeImage : defaultImage)
                    .resizable()
                    .frame(width: 40, height: 40)
                Text(buttonText)
                    .font(.notoSansExtraBold12)
                    .foregroundColor(.basic)
            }
        }
    }
}

struct ShortFormButton_Previews: PreviewProvider {
    static var previews: some View {
        ShortFormButton(
            defaultImage: "icon-up",
            activeImage: "icon-up-on",
            buttonText: "가능") {
            print(1)
        }
    }
}
