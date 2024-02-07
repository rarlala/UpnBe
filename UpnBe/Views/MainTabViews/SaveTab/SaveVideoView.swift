//
//  SaveVideoView.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/07.
//

import SwiftUI

struct SaveVideoView: View {
    var image: String
    
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFit()
    }
}

struct SaveVideoView_Previews: PreviewProvider {
    static var previews: some View {
        SaveVideoView(image: "sample-save-image")
    }
}
