//
//  VideoGridView.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/07.
//

import SwiftUI

struct VideoGridView: View {
    @ObservedObject var viewModel: SaveViewModel
    
    var columns: [GridItem] = [
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible())]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(viewModel.getData().indices, id: \.self) { index in
                    SaveVideoView(image: viewModel.getData()[index].imageName)
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
            VideoGridView(viewModel: SaveViewModel())
        }
    }
}
