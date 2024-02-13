//
//  FilterViewModel.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/06.
//

import Foundation

enum FilterType {
    case division, drill, place, participant
}

class FilterViewModel: ObservableObject {
    private let data = FilterViewData()
    
    @Published var division: [String] = []
    @Published var drill: [String] = []
    @Published var place: [String] = []
    @Published var participant: [String] = []
    
    func isNotSelected() -> Bool {
        let selectedDatas = [division, drill, place, participant]
        return selectedDatas.allSatisfy { $0.isEmpty }
    }
    
    func getFilterData(for type: FilterType) -> FilterData {
        switch type {
        case .division:
            return data.divisionDummyData
        case .drill:
            return data.drillDummyData
        case .participant:
            return data.participantDummyData
        case .place:
            return data.placeDummyData
        }
    }
    
    func resetButtonTapped() {
        division.removeAll()
        drill.removeAll()
        place.removeAll()
        participant.removeAll()
    }
}
