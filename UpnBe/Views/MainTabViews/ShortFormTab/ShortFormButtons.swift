//
//  ShortFormButtons.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/07.
//

import SwiftUI

struct ShortFormButtons: View {
    @ObservedObject var viewModel: ShortFormViewModel
    
    var body: some View {
        VStack {
            Button {
                // TODO: 버튼 클릭 시 기능 구현
            } label: {
                Image("icon-desc")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            
            Spacer()
            
            ShortFormButton(
                isActive: $viewModel.isUpButtonTapped,
                defaultImage: "icon-up",
                activeImage: "icon-up-on",
                buttonText: "가능"
            ) {
                // TODO: 버튼 클릭 시 기능 구현
                viewModel.upAndBeButtonTapped(status: .up)
            }
            
            ShortFormButton(
                isActive: $viewModel.isBeButtonTapped,
                defaultImage: "icon-be",
                activeImage: "icon-be-on",
                buttonText: "언젠간") {
                    // TODO: 버튼 클릭 시 기능 구현
                    viewModel.upAndBeButtonTapped(status: .be)
                }
            
            ShortFormButton(
                isActive: $viewModel.isSaveButtonTapped,
                defaultImage: "icon-save-file",
                activeImage: "icon-save-file-on",
                buttonText: "저장") {
                    // TODO: 버튼 클릭 시 기능 구현
                }
        }
    }
}

struct ShortFormButtons_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.background
            ShortFormButtons(viewModel: ShortFormViewModel())
        }
    }
}
