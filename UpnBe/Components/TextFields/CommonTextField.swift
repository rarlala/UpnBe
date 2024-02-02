//
//  CommonTextField.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/02.
//

import SwiftUI

struct CommonTextField: View {
    @Binding var text: String
    
    var body: some View {
        TextField("입력하세요", text: $text)
            .font(.notoSansExtraBold16)
            .multilineTextAlignment(.center)
            .padding(EdgeInsets(top: 16, leading: 7, bottom: 16, trailing: 7))
            .background(Color.background2)
            .foregroundColor(.basic)
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.background4, lineWidth: 2))
    }
}

struct CommonTextField_Previews: PreviewProvider {
    static var previews: some View {
        CommonTextField(text: .constant(""))
    }
}
