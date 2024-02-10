//
//  ProfileMenuList.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/06.
//

import SwiftUI

struct ProfileMenuList: View {
    var body: some View {
        VStack {
            ForEach(ProfileMenus.allCases, id: \.self) { profile in
                ProfileMenuLine(menuName: profile.name,
                                moveUrl: profile.moveUrl)
            }
            Spacer()
        }
        .background(Color.background)
        .scrollContentBackground(.hidden)
        
    }
}

struct ProfileMenuList_Previews: PreviewProvider {
    static var previews: some View {
        ProfileMenuList()
    }
}
