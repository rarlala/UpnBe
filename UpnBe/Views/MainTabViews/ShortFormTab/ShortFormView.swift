//
//  ShortFormView.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/05.
//

import AVKit
import SwiftUI

struct ShortFormView: View {    
    let url: String = "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"
    
    var body: some View {
        GeometryReader { geomtry in
            ZStack(alignment: .bottomTrailing) {
                if let urlString: URL = URL(string: url) {
                    VideoPlayerView(url: urlString)
                        .frame(width: geomtry.size.width, height: geomtry.size.height)
                        .edgesIgnoringSafeArea(.all)
                }
                
                ZStack {
                    ShortFormButtons()
                        .padding(.trailing, 20)
                        .padding(.bottom, 120)
                }
                
            }
        }
        .ignoresSafeArea()
    }
}

struct ShortFormView_Previews: PreviewProvider {
    static var previews: some View {
        ShortFormView()
    }
}
