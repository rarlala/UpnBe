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
            Color.background.opacity(0.95)
            
            ZStack {
                Color.background

                VStack {
                    Spacer()
                    Text(text)
                        .font(.notoSansExtraBold16)
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
                                width: (geometry.size.width - 40) / 2,
                                height: 50
                            )

                            Color1Button(
                                buttonText: confirmButtonText,
                                action: confirmAction,
                                width: (geometry.size.width - 40) / 2,
                                height: 50
                            )
                        }
                        .padding(.bottom, 10)
                    }
                    .padding(.horizontal, 15)
                    .padding(.bottom, 10)
                }
            }
            .padding(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 10))
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .presentationDetents([.fraction(370 / 740)])
    }
}

extension TwoButtonBottomSheet {
    func setSheet() -> some View {
        self.modifier(SheetModifier())
    }
}

struct TwoButtonBottomSheet_Previews: PreviewProvider {
    static var previews: some View {
        TwoButtonBottomSheet(
            text: "회원가입 중간에 이탈할 경우\n작성한 내용은 모두 사라져요.\n지금 이탈하시겠어요?",
            confirmButtonText: "확인",
            cancelButtonText: "취소",
            confirmAction: { print(1) }
        )
    }
}
