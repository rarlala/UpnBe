//
//  FilterView.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/05.
//

import SwiftUI

struct FilterView: View {
    @StateObject var viewModel = FilterViewModel()
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
        
            VStack(alignment: .trailing, spacing: 0) {
                FilterResetButton(viewModel: viewModel)
                    .opacity(viewModel.isNotSelected() ? 0 : 1)
                FilterBoxList(viewModel: viewModel)
                    .padding(.bottom, 25)
                FilterConfirmButton()
            }
            .padding(10)
            .background(Color.background)
            .cornerRadius(20)
            .padding(EdgeInsets(top: 30, leading: 10, bottom: 0, trailing: 10))
        }
    }
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
    }
}
