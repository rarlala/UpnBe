//
//  VideoGridView.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/07.
//

import SwiftUI

struct VideoGridView: View {
    @Binding var selectedTab: Int
    @Binding var data: [String]
    
    var columns: [GridItem] = [
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible())]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(data.indices, id: \.self) { index in
                    SaveVideoView(image: data[index])
                }
            }
            .padding(.horizontal, 12)
        }
    }
}

struct VideoGridView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.background
            
            VideoGridView(selectedTab: .constant(0), data: .constant(["sample-save-image"]))
        }
    }
}
