//
//  FilterResetButton.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/08.
//

import SwiftUI

struct FilterResetButton: View {
    @ObservedObject var viewModel: FilterViewModel
    
    var body: some View {
        Button {
            viewModel.resetButtonTapped()
        } label: {
            Text("재설정")
                .font(.Paragraph5)
                .foregroundColor(.background4)
                .underline()
        }
    }
}

struct FilterResetButton_Previews: PreviewProvider {
    static var previews: some View {
        FilterResetButton(viewModel: FilterViewModel())
    }
}
