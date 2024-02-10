//
//  OneButtonBottomSheet.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/02.
//

import SwiftUI

struct OneButtonBottomSheet: View {
    @Environment(\.dismiss) var dismiss
    
    var text: String
    var buttonText: String
    
    var body: some View {
        ZStack {
            Color.background
            
            VStack(spacing: 10) {
                Spacer()
                Text(text)
                    .font(.notoSansExtraBold16)
                    .foregroundColor(.basic)
                Spacer()
            }
            
            GeometryReader { geometry in
                VStack {
                    Rectangle()
                        .fill(Color.basic)
                        .frame(width: 50, height: 2)
                        .padding(20)
                        .cornerRadius(2)
                    
                    Spacer()
                    
                    Color1Button(
                        buttonText: buttonText,
                        action: { dismiss() },
                        width: geometry.size.width - 30
                    )
                    .padding(.bottom, 10)
                }
                .padding(.horizontal, 15)
                .padding(.bottom, 10)
            }
        }
        .ignoresSafeArea()
        .presentationDetents([.fraction(370 / 740)])
    }
}

extension OneButtonBottomSheet {
    func setSheet() -> some View {
        self.modifier(SheetModifier())
    }
}

struct OneButtonBottomSheet_Previews: PreviewProvider {
    static var previews: some View {
        OneButtonBottomSheet(text: "안녕하세요", buttonText: "다음")
    }
}
