//
//  FilterView.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/05.
//

import SwiftUI

struct FilterView: View {
    private let viewModel = FilterViewModel()
    
    @EnvironmentObject var tab: TabObservableObject
    @State private var division = ""
    @State private var drill = ""
    @State private var place = ""
    @State private var participant = ""
    
    var body: some View {
        ZStack(alignment: .top) {
            Color.black
            
            ZStack {
                VStack {
                    Spacer()
                        .frame(height: 25)

                    FilterBox(filterData: viewModel.getDivisionData(),
                              selectedFilter: $division)
                    FilterBox(filterData: viewModel.getDrillData(),
                              selectedFilter: $drill)
                    FilterBox(filterData: viewModel.getPlaceData(),
                              selectedFilter: $place)
                    FilterBox(filterData: viewModel.getParticipantData(),
                              selectedFilter: $participant)

                    Spacer()
                        .frame(height: 25)
                    
                    GeometryReader { geometry in
                        Color1Button(buttonText: "적용하기",
                                     action: { tab.selectedIndex = 2 },
                                     width: geometry.size.width,
                                     height: 50)
                    }
                    .frame(height: 50)
                }
                .padding([.leading, .trailing, .bottom], 10)
                .background(Color.background)
                .cornerRadius(20)
                .padding(EdgeInsets(top: 30, leading: 10, bottom: 0, trailing: 10))
            }
        }
        .ignoresSafeArea()
    }
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
    }
}
