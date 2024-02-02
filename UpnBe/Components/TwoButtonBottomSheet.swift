//
//  BottomSheet.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/01.
//

import SwiftUI

struct BottomSheet: View {
    var text: String
    var confirmButtonText: String
    var cancelButtonText: String
    
    var body: some View {
        VStack {
            Text(text)
            
            HStack {
                Button {
                    print("1")
                } label: {
                    Text(confirmButtonText)
                }
                Button {
                    print("2")
                } label: {
                    Text(cancelButtonText)
                }
            }
        }
        .presentationDetents([.medium])
    }
}

struct BottomSheet_Previews: PreviewProvider {
    static var previews: some View {
        BottomSheet(text: "안녕하세요",
                    confirmButtonText: "확인",
                    cancelButtonText: "취소")
    }
}
