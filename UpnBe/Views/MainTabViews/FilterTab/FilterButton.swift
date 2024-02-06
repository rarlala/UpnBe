//
//  FilterButton.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/06.
//

import SwiftUI

struct FilterButton: View {
    var buttonText: String
    
    var body: some View {
        Button {
            print("button click")
        } label: {
            Spacer()
            Text(buttonText)
                .font(.notoSansExtraBold16)
            Spacer()
        }
        .frame(width: 100, height: 30)
        .background(Color.background2)
        .foregroundColor(.background5)
        .cornerRadius(20)
    }
}

struct FilterButton_Previews: PreviewProvider {
    static var previews: some View {
        FilterButton(buttonText: "테스트")
    }
}
