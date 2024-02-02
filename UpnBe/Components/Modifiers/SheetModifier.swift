//
//  SheetModifier.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/02.
//

import SwiftUI

struct SheetModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        .cornerRadius(30)
        .background(Color.black.opacity(0.01))
        .padding([.leading, .trailing, .bottom], 10)
        .ignoresSafeArea()
    }
}
