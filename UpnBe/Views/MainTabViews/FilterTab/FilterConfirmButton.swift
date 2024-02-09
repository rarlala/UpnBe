//
//  FilterConfirmButton.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/09.
//

import SwiftUI

struct FilterConfirmButton: View {
    @EnvironmentObject var tab: TabObservableObject
    
    var body: some View {
        GeometryReader { geometry in
            Color1Button(buttonText: "적용하기",
                         action: { tab.selectedIndex = 2 },
                         width: geometry.size.width,
                         height: 50)
        }
        .frame(height: 50)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

struct FilterConfirmButton_Previews: PreviewProvider {
    static var previews: some View {
        FilterConfirmButton()
    }
}
