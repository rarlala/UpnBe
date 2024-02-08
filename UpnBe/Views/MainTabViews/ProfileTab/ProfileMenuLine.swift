//
//  ProfileMenuLine.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/06.
//

import SwiftUI

struct ProfileMenuLine: View {
    var cellText: String
    
    var body: some View {
        HStack(alignment: .top) {
            Text(cellText)
                .font(.notoSansMedium18)
                .foregroundColor(.background5)
                .padding(.leading, 5)
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundColor(.basic)
        }
        .padding(.bottom, 10)
        .background(
            Rectangle()
                .fill(Color.background3)
                .frame(height: 1)
            ,alignment: .bottom
        )
        .padding([.horizontal, .top], 20)
    }
}

struct ProfileMenuLine_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.background
            ProfileMenuLine(cellText: "테스트")
        }
    }
}
