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
        HStack {
            Text(cellText)
                .font(.notoSansMedium18)
                .foregroundColor(.background5)
                .padding(.leading, 5)
                .padding(.bottom, 10)
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundColor(.basic)
        }
        .listRowBackground(Color.background)
        .background(
            Rectangle()
                .fill(Color.background3)
                .frame(height: 1)
            ,alignment: .bottom
        )
        .padding(.horizontal, 20)
        .padding(.bottom, 10)
    }
}

struct ProfileMenuLine_Previews: PreviewProvider {
    static var previews: some View {
        ProfileMenuLine(cellText: "테스트")
    }
}
