//
//  FilterButton.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/06.
//

import SwiftUI

struct FilterButton: View {
    var buttonText: String
    @Binding var selectedFilter: [String]
    
    var body: some View {
        let isSelected = selectedFilter.contains(buttonText)
        
        Button {
            if selectedFilter.contains(buttonText) {
                selectedFilter = selectedFilter.filter{ $0 != buttonText }
            } else {
                selectedFilter.append(buttonText)
            }
        } label: {
            Spacer()
            Text(buttonText)
                .font(.notoSansExtraBold16)
                .foregroundColor(isSelected ? .background : .background5)
            Spacer()
        }
        .frame(width: 100, height: 30)
        .background(isSelected ? Color.color2 : Color.background2)
        .cornerRadius(20)
    }
}

struct FilterButton_Previews: PreviewProvider {
    static var previews: some View {
        FilterButton(buttonText: "테스트", selectedFilter: .constant(["테스트", "테스트1"]))
    }
}
