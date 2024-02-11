//
//  ReportDrillLevel.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/08.
//

import SwiftUI

struct ReportDrillLevel: View {
    var datas: [ReportData]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("드릴별 레벨")
                .font(.Heading4)
                .foregroundColor(.basic)
            
            HStack {
                ForEach(datas.indices, id: \.self) { index in
                    let data = datas[index]
                    VStack(spacing: 5) {
                        Text("\(data.text)")
                            .font(.Heading4)
                            .foregroundColor(.basic)
                        
                        Text("\(data.currentCount)")
                            .font(.Heading2)
                            .foregroundColor(.color1)
                    }
                    
                    if index != datas.count - 1 {
                        Spacer()
                    }
                }
            }
            .padding(.vertical, 20)
            .padding(.horizontal, 15)
            .background(Color.background2)
            .cornerRadius(20)
        }
    }
}

struct ReportDrillLevel_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.background
            ReportDrillLevel(datas: [ReportData(text: "a", currentCount: 3, maxCount: 6)])
        }
    }
}
