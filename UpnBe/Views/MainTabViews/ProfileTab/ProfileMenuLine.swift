//
//  ProfileMenuLine.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/06.
//

import SwiftUI

struct ProfileMenuLine: View {
    var menuName: String
    var moveUrl: String
    
    var body: some View {
        HStack(alignment: .top) {
            NavigationLink {
                WebView(urlToLoad: moveUrl)
            } label: {
                Text(menuName)
                    .font(.notoSansMedium18)
                    .foregroundColor(.background5)
                    .padding(.leading, 5)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundColor(.basic)
            }
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
            ProfileMenuLine(menuName: "테스트",
                            moveUrl: "https://google.com")
        }
    }
}
