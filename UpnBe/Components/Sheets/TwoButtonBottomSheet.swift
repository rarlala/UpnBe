//
//  TwoButtonBottomSheet.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/01.
//

import SwiftUI

struct TwoButtonBottomSheet: View {
    @Environment(\.dismiss) var dismiss
    @State private var inputText = ""
    
    var isShowTextField = false
    var text: String
    var confirmButtonText: String
    var cancelButtonText: String
    var confirmAction: () -> Void
    var cancelAction: () -> Void = {}
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Text(text)
                    .font(.Heading4)
                    .foregroundColor(.basic)
                    .multilineTextAlignment(.center)
                Spacer()
                
                if isShowTextField {
                    CommonTextField(text: $inputText)
                        .padding(.horizontal, 15)
                    Spacer().frame(height: 110)
                }
            }
            
            GeometryReader { geometry in
                VStack {
                    Rectangle()
                        .fill(Color.basic)
                        .frame(width: 50, height: 2)
                        .padding(20)
                        .cornerRadius(2)
                    
                    Spacer()
                    HStack(spacing: 10) {
                        BackgroundColorButton(
                            buttonText: cancelButtonText,
                            action: cancelAction,
                            width: (geometry.size.width - 40) / 2
                        )
                        
                        Color1Button(
                            buttonText: confirmButtonText,
                            action: confirmAction,
                            width: (geometry.size.width - 40) / 2
                        )
                    }
                    .padding(.bottom, 10)
                }
                .padding(.horizontal, 15)
                .padding(.bottom, 10)
            }
        }
        .presentationDetents([.fraction(370 / 740)])
        .background(Color.background)
    }
}

struct TwoButtonBottomSheet_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.background
            TwoButtonBottomSheet(
                text: "회원가입 중간에 이탈할 경우\n작성한 내용은 모두 사라져요.\n지금 이탈하시겠어요?",
                confirmButtonText: "확인",
                cancelButtonText: "취소",
                confirmAction: { print(1) }
            )
        }
    }
}
