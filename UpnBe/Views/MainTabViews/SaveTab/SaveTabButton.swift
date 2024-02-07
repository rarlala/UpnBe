//
//  SaveTabButton.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/07.
//

import SwiftUI

struct SaveTabButton: View {
    @Binding var selectedTab: Int
    var tabIndex: Int
    var buttonText: String
    
    var body: some View {
        let isActive: Bool = selectedTab == tabIndex
        
        Button {
            selectedTab = tabIndex
        } label: {
            Spacer()
            Text(buttonText)
                .font(.notoSansExtraBold16)
                .foregroundColor(isActive ? .basic : .background5)
                .padding(.bottom, 10)
                .background(
                    Rectangle()
                        .fill(Color.basic)
                        .frame(height: isActive ? 3 : 0)
                    ,alignment: .bottom
                )
            Spacer()
        }
    }
}

struct SaveTabButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.background
            
            SaveTabButton(selectedTab: .constant(0),
                          tabIndex: 0,
                          buttonText: "Text")
        }
    }
}
