//
//  SaveView.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/05.
//

import SwiftUI

struct SaveView: View {
    @State var selectedTab: Int = 0
    @State var data: [[String]] = [
        ["sample-save-image"],
        ["sample-save-image", "sample-save-image"],
        ["sample-save-image", "sample-save-image", "sample-save-image"]
    ]
    
    var body: some View {
        ZStack {
            Color.background.edgesIgnoringSafeArea(.all)

            VStack {
                SaveTabBar(selectedTab: $selectedTab)
                    .padding(.top, 36)
                
                VideoGridView(selectedTab: $selectedTab,
                              data: $data[selectedTab])
                
                Spacer()
            }
        }
    }
}

struct SaveView_Previews: PreviewProvider {
    static var previews: some View {
        SaveView()
    }
}
