//
//  ShortFormView.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/05.
//

import AVKit
import SwiftUI

struct ShortFormView: View {
    @StateObject var viewModel = ShortFormViewModel()
    
    // TODO: 실제 비디오 링크로 수정
    let url: String = "https://s3-figma-videos-production-sig.figma.com/video/1241797149607002234/TEAM/fad3/24d9/-5c51-4cbe-8c72-eca5b12f79ef?Expires=1710115200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=B2E1hIJmbsS02lQyg0VHBfx9RMKLJi40tXYkyBILlG~~M1SGUYQSHyN1iabyQJWfJV5nympu1rE0LXhFgUfDN8GRBiRSUqSjBNY2LaY-xy51fCEz~yzDQ~7nTYL2lISjmt~EQ3BDYloddpzqyxLrtedNZKHXUaRyvzM6eIWtNEgVmLsmN43xEd4bmyKCiCR6Wy13mDoxKDNwUrDl9TI-HApTIfQSIHLyA8Qs4RIWwk--Ry4Y6bWHuaDNsrMTIY6z1Eq3t0Ow8Zn4TYvrwjvW10~rZjeMDPLSf5UbzKCvU5J0v1MJ-Jty20BUZQQIjuc7iFGz1MIXektozz~-cmrCZQ__"
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Color.black.edgesIgnoringSafeArea(.all)
            
            if let urlString: URL = URL(string: url) {
                GeometryReader { geomtry in
                    VideoPlayerView(url: urlString)
                        .frame(width: geomtry.size.width, height: geomtry.size.height)
                }
            }
                
            ShortFormButtons(viewModel: viewModel)
                .padding([.top, .trailing], 20)
                .padding(.bottom, 50)
        }
    }
}

struct ShortFormView_Previews: PreviewProvider {
    static var previews: some View {
        ShortFormView(viewModel: ShortFormViewModel())
    }
}
