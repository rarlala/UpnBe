//
//  SaveTabBar.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/07.
//

import SwiftUI

struct SaveTabBar: View {
    @ObservedObject var viewModel: SaveViewModel
    
    var tabList = ["가능", "언젠간", "저장"]
    
    var body: some View {
        HStack {
            ForEach(tabList.indices, id: \.self) { index in
                SaveTabButton(selectedTab: $viewModel.tabIndex,
                              tabIndex: index,
                              buttonText: tabList[index])
            }
        }
        .background(
            Rectangle()
                .fill(Color.background2)
                .frame(height: 1)
            ,alignment: .bottom
        )
    }
}

struct SaveTabBar_Previews: PreviewProvider {
    static var previews: some View {
        SaveTabButton(selectedTab: .constant(0),
                      tabIndex: 0,
                      buttonText: "가능")
    }
}
