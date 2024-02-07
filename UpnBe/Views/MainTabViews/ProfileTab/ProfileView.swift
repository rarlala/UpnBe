//
//  ProfileView.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/05.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            Color.background
            
            VStack {
                ProfileBox()
                ProfileMenuList()
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
