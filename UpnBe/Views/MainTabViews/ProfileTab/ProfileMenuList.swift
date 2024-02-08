//
//  ProfileMenuList.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/06.
//

import SwiftUI

struct ProfileMenuList: View {
    var body: some View {
        VStack {
            ProfileMenuLine(cellText: "숏츠 영상 등록하기")
            ProfileMenuLine(cellText: "카카오톡 문의하기")
            ProfileMenuLine(cellText: "자주 묻는 질문")
            ProfileMenuLine(cellText: "공지사항")
            Spacer()
        }
        .background(Color.background)
        .scrollContentBackground(.hidden)
    }
}

struct ProfileMenuList_Previews: PreviewProvider {
    static var previews: some View {
        ProfileMenuList()
    }
}
