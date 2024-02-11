//
//  ReportProfileBox.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/06.
//

import SwiftUI

struct ReportProfileBox: View {
    var body: some View {
        HStack(alignment: .top) {
            Image("icon-profile-image")
                .resizable()
                .frame(width: 90, height: 90)
                .padding(.trailing, 30)
            
            VStack(alignment: .leading, spacing: 11) {
                Text("민첩한곰돌이")
                    .font(.Heading2)
                    .foregroundColor(.background)
                
                HStack() {
                    VStack(alignment: .leading, spacing: 5) {
                        Text("레벨")
                            .font(.Heading3)
                        
                        Text("디비전")
                            .font(.Heading3)
                        
                        Text("소속")
                            .font(.Heading3)
                    }
                    VStack(alignment: .leading, spacing: 5) {
                        Text("12")
                            .font(.Heading3)
                        
                        Text("Rookie")
                            .font(.Heading3)
                        
                        Text("지구대학교")
                            .font(.Heading3)
                    }
                }
            }
            Spacer()
        }
        .frame(height: 160)
        .padding(.horizontal, 30)
        .background(Color.color1)
        .clipShape(TopRoundedRectangle(radius: 30))
    }
}

struct ReportProfileBox_Previews: PreviewProvider {
    static var previews: some View {
        ReportProfileBox()
    }
}
