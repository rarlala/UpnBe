//
//  ShortFormButtons.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/07.
//

import SwiftUI

enum ShortStatus {
    case up
    case be
}

struct ShortFormButtons: View {
    @State var shortStatus: ShortStatus?
    @State var isUpButtonTapped: Bool = false
    @State var isBeButtonTapped: Bool = false
    @State var isSaveButtonTapped: Bool = false
    
    func upAndBeButtonTapped(status: ShortStatus) {
        if shortStatus == status {
            shortStatus = nil
            isUpButtonTapped = status == .up ? false : true
            isBeButtonTapped = status == .be ? false : true
            
            if status == .up {
                isBeButtonTapped = false
            } else {
                isUpButtonTapped = false
            }
        } else {
            shortStatus = status
            isUpButtonTapped = status == .up ? true : false
            isBeButtonTapped = status == .be ? true : false
        }
    }
    
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
                isActive: $isUpButtonTapped,
                defaultImage: "icon-up",
                activeImage: "icon-up-on",
                buttonText: "가능"
            ) {
                // TODO: 버튼 클릭 시 기능 구현
                upAndBeButtonTapped(status: .up)
            }
            
            ShortFormButton(
                isActive: $isBeButtonTapped,
                defaultImage: "icon-be",
                activeImage: "icon-be-on",
                buttonText: "언젠간") {
                    // TODO: 버튼 클릭 시 기능 구현
                    upAndBeButtonTapped(status: .be)
                }
            
            ShortFormButton(
                isActive: $isSaveButtonTapped,
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
            
            ShortFormButtons()
        }
    }
}
