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
        VStack {
            FilterBox(filterData: viewModel.getFilterData(for: .division),
                      selectedFilter: $viewModel.division)
            Spacer()
            FilterBox(filterData: viewModel.getFilterData(for: .drill),
                      selectedFilter: $viewModel.drill)
            Spacer()
            FilterBox(filterData: viewModel.getFilterData(for: .place),
                      selectedFilter: $viewModel.place)
            Spacer()
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
