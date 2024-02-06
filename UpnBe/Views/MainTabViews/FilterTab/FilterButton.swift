//
//  FilterButton.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/06.
//

import SwiftUI

struct FilterButton: View {
    var buttonText: String
    @Binding var selectedFilter: String
    
    var body: some View {
        let isSelected = selectedFilter == buttonText
        
        Button {
            selectedFilter = buttonText
        } label: {
            Spacer()
            Text(buttonText)
                .font(.notoSansExtraBold16)
            Spacer()
        }
        .frame(width: 100, height: 30)
        .background(isSelected ? Color.color2 : Color.background2)
        .foregroundColor(.background5)
        .cornerRadius(20)
    }
}

struct FilterButton_Previews: PreviewProvider {
    static var previews: some View {
        FilterButton(buttonText: "테스트", selectedFilter: .constant("테스트"))
    }
}
