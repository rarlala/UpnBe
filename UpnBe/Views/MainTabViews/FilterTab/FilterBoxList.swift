//
//  FilterBoxList.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/08.
//

import SwiftUI

struct FilterBoxList: View {
    @ObservedObject var viewModel: FilterViewModel
    
    var body: some View {
        VStack(spacing: 25) {
            FilterBox(filterData: viewModel.getDivisionData(),
                      selectedFilter: $viewModel.division)
            FilterBox(filterData: viewModel.getDrillData(),
                      selectedFilter: $viewModel.drill)
            FilterBox(filterData: viewModel.getPlaceData(),
                      selectedFilter: $viewModel.place)
            FilterBox(filterData: viewModel.getParticipantData(),
                      selectedFilter: $viewModel.participant)
        }
    }
}

struct FilterBoxList_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.background
            FilterBoxList(viewModel: FilterViewModel())
        }
    }
}
