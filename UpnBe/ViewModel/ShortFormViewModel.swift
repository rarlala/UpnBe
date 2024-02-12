//
//  ShortFormViewModel.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/08.
//

import SwiftUI

final class ShortFormViewModel: ObservableObject {
    @Published var shortStatus: ShortStatus?
    @Published var isUpButtonTapped: Bool = false
    @Published var isBeButtonTapped: Bool = false
    @Published var isSaveButtonTapped: Bool = false
    
    func upAndBeButtonTapped(status: ShortStatus) {
        if shortStatus == status {
            shortStatus = nil
            isUpButtonTapped = status == .up ? false : true
            isBeButtonTapped = status == .be ? false : true
            
            if status == .up {
                isBeButtonTapped = false
            } else {
                isUpButtonTapped = false
            }
        } else {
            shortStatus = status
            isUpButtonTapped = status == .up ? true : false
            isBeButtonTapped = status == .be ? true : false
        }
    }
}
