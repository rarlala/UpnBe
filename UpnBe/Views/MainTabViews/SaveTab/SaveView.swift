//
//  SaveView.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/05.
//

import SwiftUI

struct SaveView: View {
    @StateObject var viewModel = SaveViewModel()
    
    var body: some View {
        ZStack {
            Color.background.edgesIgnoringSafeArea(.all)

            VStack {
                SaveTabBar(viewModel: viewModel)
                
                if viewModel.getData().isEmpty {
                    Text(viewModel.getEmptyText())
                        .font(.Heading4)
                        .foregroundColor(.basic)
                        .multilineTextAlignment(.center)
                        .padding(.top, 142)
                        
                } else {
                    VideoGridView(viewModel: viewModel)
                }
                Spacer()
            }
            .padding(.top, 36)
        }
    }
}

struct SaveView_Previews: PreviewProvider {
    static var previews: some View {
        SaveView()
    }
}
