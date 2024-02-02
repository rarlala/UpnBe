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
            .ignoresSafeArea()
//        .cornerRadius(30)

    }
}
