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
            FilterBox(filterData: viewModel.getFilterData(for: .division),
                      selectedFilter: $viewModel.division)
            FilterBox(filterData: viewModel.getFilterData(for: .drill),
                      selectedFilter: $viewModel.drill)
            FilterBox(filterData: viewModel.getFilterData(for: .place),
                      selectedFilter: $viewModel.place)
            FilterBox(filterData: viewModel.getFilterData(for: .participant),
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
