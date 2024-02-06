//
//  FilterViewModel.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/06.
//

import Foundation

class FilterViewModel {
    let data = FilterViewData()
    
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
}
