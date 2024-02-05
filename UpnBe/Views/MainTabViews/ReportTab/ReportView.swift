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
            ZStack {
                Color.color1
                
                HStack(alignment: .top) {
                    Image("icon-profile-image")
                        .resizable()
                        .frame(width: 90, height: 90)
                        .padding(.trailing, 30)
                    
                    VStack(alignment: .leading) {
                        Text("민첩한곰돌이")
                            .font(.notoSansExtraBold20)
                            .foregroundColor(.background)
                            .padding(.bottom, 11)
                        
                        HStack() {
                            VStack(alignment: .leading) {
                                Text("레벨")
                                    .font(.notoSansExtraBold18)
                                
                                Spacer()
                                    .frame(height: 5)
                                
                                Text("디비전")
                                    .font(.notoSansExtraBold18)
                                
                                Spacer()
                                    .frame(height: 5)
                                
                                Text("소속")
                                    .font(.notoSansExtraBold18)
                            }
                            VStack(alignment: .leading) {
                                Text("12")
                                    .font(.notoSansExtraBold18)
                                
                                Spacer()
                                    .frame(height: 5)
                                
                                Text("Rookie")
                                    .font(.notoSansExtraBold18)
                                
                                Spacer()
                                    .frame(height: 5)
                                
                                Text("지구대학교")
                                    .font(.notoSansExtraBold18)
                            }
                        }
                    }
                }
            }
            .frame(height: 160)
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            .background(Color.color1)
            
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
