//
//  ReportView.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/05.
//

import SwiftUI

struct ReportView: View {
    let dummyDatas = [
        (text: "마스터링", currentCount: 22, maxCount: 64),
        (text: "슈팅", currentCount: 11, maxCount: 18),
        (text: "패스", currentCount: 13, maxCount: 33),
        (text: "드리블", currentCount: 35, maxCount: 64)
    ]
    
    var body: some View {
        VStack {
            ReportProfileBox()
            
            Spacer()
                .frame(height: 0)
            
            ZStack {
                Color.background
            
                VStack(alignment: .leading) {
                    Text("드릴별 레벨")
                        .font(.notoSansExtraBold16)
                        .foregroundColor(.basic)
                    
                    Spacer()
                        .frame(height: 5)
                    
                    HStack {
                        ForEach(dummyDatas.indices, id: \.self) { index in
                            let data = dummyDatas[index]
                            VStack {
                                Text("\(data.text)")
                                    .font(.notoSansMedium16)
                                    .foregroundColor(.basic)
                                Spacer()
                                    .frame(height: 5)
                                Text("\(data.currentCount)")
                                    .font(.notoSansExtraBold20)
                                    .foregroundColor(.color1)
                            }
                            
                            if index != dummyDatas.count - 1 {
                                Spacer()
                            }
                        }
                    }
                    .padding(.vertical, 20)
                    .padding(.horizontal, 15)
                    .background(Color.background2)
                    .cornerRadius(20)
                    
                    Spacer()
                        .frame(height: 15)
                    
                    Text("드릴 가능UP 현황")
                        .font(.notoSansExtraBold16)
                        .foregroundColor(.basic)
                    
                    Spacer()
                        .frame(height: 5)
                    
                    
                    VStack(alignment: .leading) {
                        ForEach(dummyDatas.indices, id: \.self) { index in
                            let data = dummyDatas[index]
                            HStack {
                                Text(data.text)
                                    .foregroundColor(.background5)
                                
                                Spacer()
                                
                                HStack {
                                    Text("\(data.currentCount)")
                                        .foregroundColor(.background5)
                                    Text(" / \(data.maxCount)")
                                        .foregroundColor(.background3)
                                }
                            }
                            
                            GeometryReader { geometry in
                                ProgressBar(geometry: geometry,
                                            currentCount: CGFloat(data.currentCount),
                                            maxCount: CGFloat(data.maxCount))
                            }
                            .frame(height: 20)
                            
                            if index != dummyDatas.count - 1 {
                                Spacer()
                                    .frame(height: 25)
                            }
                        }
                    }
                    .padding(.vertical, 20)
                    .padding(.horizontal, 15)
                    .background(Color.background2)
                    .cornerRadius(20)
                    
                    Spacer()
                }
                .padding(.vertical, 20)
                .padding(.horizontal, 25)
            }
            .ignoresSafeArea()
        }
    }
}

struct ReportView_Previews: PreviewProvider {
    static var previews: some View {
        ReportView()
    }
}
