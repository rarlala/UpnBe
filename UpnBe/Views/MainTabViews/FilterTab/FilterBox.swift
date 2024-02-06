//
//  FilterBox.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/06.
//

import SwiftUI

struct FilterBox: View {
    var filterData: FilterData
    
    var body: some View {
        VStack {
            Text(filterData.name)
                .font(.notoSansExtraBold16)
                .foregroundColor(.basic)
                .padding(.vertical, 11)
            
            Spacer()
                .frame(height: 21)
            
            LazyVStack {
                let listCount = filterData.list.count
                let columnCount = listCount == 4 ? 2 : min(listCount, 3)
                let rowCount = (listCount + columnCount - 1) / columnCount

                ForEach(0..<rowCount, id: \.self) { rowIndex in
                    HStack {
                        ForEach(0..<columnCount, id: \.self) { colIndex in
                            let itemIndex = rowIndex * columnCount + colIndex
                            if itemIndex < filterData.list.count {
                                FilterButton(buttonText: filterData.list[itemIndex])
                            }
                        }
                    }
                }
            }
            .padding(.bottom, 20)
        }
    }
}

struct FilterBox_Previews: PreviewProvider {
    static var previews: some View {
        FilterBox(filterData: FilterData(name: "test", list: ["test1", "test2", "test3", "test4"]))
    }
}
