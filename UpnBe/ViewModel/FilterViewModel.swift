//
//  FilterViewModel.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/06.
//

import Foundation

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
    
    func getDivisionData() -> FilterData {
        return data.divisionDummyData
    }
    
    func getDrillData() -> FilterData {
        return data.drillDummyData
    }
    
    func getParticipantData() -> FilterData {
        return data.participantDummyData
    }
    
    func getPlaceData() -> FilterData {
        return data.placeDummyData
    }
    
    func resetButtonTapped() {
        division.removeAll()
        drill.removeAll()
        place.removeAll()
        participant.removeAll()
    }
}
