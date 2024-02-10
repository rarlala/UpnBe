//
//  ProfileMenus.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/10.
//

import Foundation

enum ProfileMenus: CaseIterable {
    case videoRegister
    case kakao
    case qna
    case notice
    
    var name: String {
        switch self {
        case .videoRegister:
            return "숏츠 영상 등록하기"
        case .kakao:
            return "카카오톡 문의하기"
        case .qna:
            return "자주 묻는 질문"
        case .notice:
            return "공지사항"
        }
    }
    
    var moveUrl: String {
        switch self {
        case .videoRegister:
            return "https://tally.so/r/3j6bGQ"
        case .kakao:
            return "http://pf.kakao.com/_kgxgqG/chat"
        case .qna:
            return "https://upnbe-space.gitbook.io/home"
        case .notice:
            return "https://upnbe-space.gitbook.io/home"
        }
    }
}
