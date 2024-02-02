//
//  ContentView.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/01.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowSheet: Bool = false

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Button {
                isShowSheet.toggle()
            } label: {
                Text("aa")
            }
        }
        .font(.notoSansMedium20)
        .background(.background)
        .sheet(isPresented: $isShowSheet, content: {
//            TwoButtonBottomSheet(
//                text: "회원가입 중간에 이탈할 경우\n작성한 내용은 모두 사라져요.\n지금 이탈하시겠어요?",
//                confirmButtonText: "확인",
//                cancelButtonText: "취소")
//            .modifier(SheetModifier())
            OneButtonBottomSheet(
                text: "회원가입 중간에 이탈할 경우\n작성한 내용은 모두 사라져요.\n지금 이탈하시겠어요?",
                buttonText: "확인")
            .modifier(SheetModifier())
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
