//
//  ShortFormButtons.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/07.
//

import SwiftUI

struct ShortFormButtons: View {
    var body: some View {
        VStack {
            ShortFormButton(
                defaultImage: "icon-up",
                activeImage: "icon-up-on",
                buttonText: "가능") {
                print(1)
            }
            
            ShortFormButton(
                defaultImage: "icon-be",
                activeImage: "icon-be-on",
                buttonText: "언젠간") {
                print(1)
            }
            
            ShortFormButton(
                defaultImage: "icon-save-file",
                activeImage: "icon-save-file-on",
                buttonText: "저장") {
                print(1)
            }
        }
    }
}

struct ShortFormButtons_Previews: PreviewProvider {
    static var previews: some View {
        ShortFormButtons()
    }
}
