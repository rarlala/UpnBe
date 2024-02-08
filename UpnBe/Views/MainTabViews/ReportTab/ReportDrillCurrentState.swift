//
//  ReportDrillCurrentState.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/08.
//

import SwiftUI

struct ReportDrillCurrentState: View {
    var datas: [ReportData]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("드릴 가능UP 현황")
                .font(.notoSansExtraBold16)
                .foregroundColor(.basic)
            
            VStack() {
                ForEach(datas, id: \.self) { data in
                    HStack(spacing: 25) {
                        Text(data.text)
                            .foregroundColor(.background5)
                        
                        Spacer()
                        
                        HStack {
                            Text("\(data.currentCount)")
                                .font(.notoSansMedium12)
                                .foregroundColor(.background5)
                            
                            Text(" / \(data.maxCount)")
                                .font(.notoSansMedium12)
                                .foregroundColor(.background3)
                        }
                    }
                    
                    GeometryReader { geometry in
                        ProgressBar(geometry: geometry,
                                    currentCount: CGFloat(data.currentCount),
                                    maxCount: CGFloat(data.maxCount))
                    }
                    .frame(height: 20)
                }
            }
            .padding(.vertical, 20)
            .padding(.horizontal, 15)
            .background(Color.background2)
            .cornerRadius(20)
        }
    }
}

struct ReportDrillCurrentState_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.background
            ReportDrillCurrentState(datas: [ReportData(text: "aa", currentCount: 1, maxCount: 2)])
        }
    }
}
