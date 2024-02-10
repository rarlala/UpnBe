//
//  SaveViewModel.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/08.
//

import SwiftUI

class SaveViewModel: ObservableObject {
    @Published var tabIndex: Int = 0
    
    private let data = SaveViewData()
    
    func getData() -> [SaveData] {
        if tabIndex == 0 {
            return data.upData
        } else if tabIndex == 1 {
            return data.beData
        } else {
            return data.saveData
        }
    }
    
    func getEmptyText() -> String {
        // TODO: 받아온 user data로 수정 필요
        let userName = "rarla"
        
        if tabIndex == 0 {
            return "아직 모든 기술을 다 보지 못하셨나요?\n\(userName)님의 실력 향상을 응원해요!"
        } else if tabIndex == 1 {
            return "모든 기술을 다 습득하신건가요?\n그렇다면 \(userName)님은 세미프로!"
        } else {
            return "내가 모은 훈련 꿀팁을 모아 보세요\n\(userName)님 만의 특별한 훈련 일지가 될거에요"
        }
    }
}

