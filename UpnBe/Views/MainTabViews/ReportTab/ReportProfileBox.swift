//
//  ReportProfileBox.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/06.
//

import SwiftUI

struct ReportProfileBox: View {
    var body: some View {
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
        .background(Color.color1)
    }
}

struct ReportProfileBox_Previews: PreviewProvider {
    static var previews: some View {
        ReportProfileBox()
    }
}
