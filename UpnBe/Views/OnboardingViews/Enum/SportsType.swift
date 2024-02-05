//
//  SportsType.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/02.
//

import SwiftUI

enum SportsType: CaseIterable {
    case soccer
    case basketball
    case volleyball
    case swimming
    
    var image: Image {
        switch self {
        case .soccer:
            return Image("Soccer")
        case .basketball:
            return Image("Basketball")
        case .volleyball:
            return Image("Volleyball")
        case .swimming:
            return Image("Swimming")
        }
    }
    
    var name: String {
        switch self {
        case .soccer:
            return "축구/풋살"
        case .basketball:
            return "농구"
        case .volleyball:
            return "배구"
        case .swimming:
            return "수영"
        }
    }
}
