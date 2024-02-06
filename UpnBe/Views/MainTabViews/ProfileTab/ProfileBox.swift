//
//  ProfileBox.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/06.
//

import SwiftUI

struct ProfileBox: View {
    var body: some View {
        ZStack {
            Color.color1
            
            HStack(alignment: .top) {
                Image("icon-profile-image")
                    .resizable()
                    .frame(width: 90, height: 90)
                    .padding(.trailing, 30)
                
                VStack(alignment: .leading, spacing: 5) {
                    
                    Text("민첩한곰돌이")
                        .font(.notoSansExtraBold20)
                        .foregroundColor(.background)
                    
                    Text("12 개월")
                        .font(.notoSansExtraBold20)
                        .foregroundColor(.background)
                    
                    Text("혼자서 | 기술훈련")
                        .font(.notoSansExtraBold20)
                        .foregroundColor(.background)
                }
                
                Spacer()
                
                VStack {
                    Button {
                        print(2)
                    } label: {
                        Image("icon-setting")
                            .resizable()
                            .frame(width: 25, height: 25)
                    }

                    Spacer()
                    
                    Button {
                        print(1)
                    } label: {
                        Text("수정")
                            .font(.notoSansExtraBold14)
                            .foregroundColor(.background2)
                            .underline()
                    }
                }
                .padding(.vertical, -15)
                .padding(.trailing, -20)
                
            }
            .padding(.vertical, 35)
            .padding(.horizontal, 30)
        }
        .frame(height: 160)
        .background(Color.color1)
    }
}

struct ProfileBox_Previews: PreviewProvider {
    static var previews: some View {
        ProfileBox()
    }
}
