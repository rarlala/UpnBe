//
//  LaunchView.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/02.
//

import SwiftUI

struct LaunchView: View {
    var body: some View {
        ZStack {
            Color.black
            Image("Logo")
                .resizable()
                .frame(width: 159, height: 73)
        }
        .ignoresSafeArea()
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
