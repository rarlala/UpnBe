//
//  FilterView.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/05.
//

import SwiftUI

struct FilterData {
    let name: String
    let list: [String]
}

struct FilterView: View {
    let menus: [String] = ["디비전", "드릴", "장소", "참여인원"]
    var dummyDatas: [FilterData]
    
    let divisionDummyData = FilterData(name: "디비전", list: ["뉴비", "루키", "아마추어", "올스타", "세미프로"])
    let drillDummyData = FilterData(name: "드릴", list: ["볼마스터리", "드리블", "슈팅", "패스", "트레이닝"])
    let placeDummyData = FilterData(name: "장소", list: ["집", "미니풋살장", "공터", "정규풋살장"])
    let participantDummyData = FilterData(name: "참여인원", list: ["혼자서", "둘이서", "여러명이서"])
    
    init(dummyDatas: [FilterData] = []) {
        self.dummyDatas = [divisionDummyData, drillDummyData, placeDummyData, participantDummyData]
    }
    
//    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ZStack(alignment: .top) {
            Color.black
            
            ZStack {
                VStack {
                    Spacer()
                        .frame(height: 25)
                    
                    ForEach(dummyDatas.indices, id: \.self) { index in
                        let currentData = dummyDatas[index]
                        
                        Text(currentData.name)
                            .font(.notoSansExtraBold16)
                            .foregroundColor(.basic)
                            .padding(.vertical, 11)
                        
                        Spacer()
                            .frame(height: 21)
                        
                        LazyVStack {
                            let listCount = currentData.list.count
                            let columnCount = listCount == 4 ? 2 : min(listCount, 3)
                            let rowCount = (listCount + columnCount - 1) / columnCount

                            ForEach(0..<rowCount, id: \.self) { rowIndex in
                                HStack {
                                    ForEach(0..<columnCount) { colIndex in
                                        let itemIndex = rowIndex * columnCount + colIndex
                                        if itemIndex < currentData.list.count {
                                            Button {
                                                print(itemIndex)
                                            } label: {
                                                Spacer()
                                                Text(currentData.list[itemIndex])
                                                    .font(.notoSansExtraBold16)
                                                Spacer()
                                            }
                                            .frame(width: 100, height: 30)
                                            .background(Color.background2)
                                            .foregroundColor(.background5)
                                            .cornerRadius(20)
                                        }
                                    }
                                }
                            }
                        }
                            
                        Spacer()
                            .frame(height: 20)
                    }
                    
                    Spacer()
                        .frame(height: 25)
                    
                    GeometryReader { geometry in
                        Color1Button(buttonText: "적용하기",
                                     action: {print(1)},
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
        FilterView(dummyDatas: [FilterData(name: "aa", list: ["ab"])])
    }
}
