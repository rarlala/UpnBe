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
}

