//
//  VideoControlBar.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/09.
//

import SwiftUI
import Combine

struct VideoControlBar: View {
    @ObservedObject var viewModel: VideoPlayerViewModel
    @State private var tempTime: Double = 0
    
    var body: some View {
        let playingPercent = max(0, viewModel.currentTime / viewModel.duration)
        
        ZStack(alignment: .center) {
            GeometryReader { geometry in
                let currentPlayingWidth = max(0, geometry.size.width * playingPercent)
                
                let drag = DragGesture()
                    .onChanged { value in
                        tempTime = max(0, Double(value.location.x / geometry.size.width) * viewModel.duration)
                    }
                    .onEnded { _ in
                        viewModel.moveTime(seconds: tempTime)
                    }
                
                Rectangle()
                    .frame(height: 2)
                    .foregroundColor(.background4)
                
                Rectangle()
                    .frame(width: currentPlayingWidth, height: 2)
                    .foregroundColor(.color2)
                
                Ellipse()
                    .frame(width: 10, height: 10)
                    .position(x: currentPlayingWidth)
                    .foregroundColor(.background5)
                    .gesture(drag)
            }
            .frame(height: 2)
        }
    }
}

struct VideoControlBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.background
            let url: String = "https://s3-figma-videos-production-sig.figma.com/video/1241797149607002234/TEAM/fad3/24d9/-5c51-4cbe-8c72-eca5b12f79ef?Expires=1708300800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=hUb7m7gz1SN17f3aQoTnEcAoQ7c9PsczfnpecvVQ5eB9MUY6XINJYWh8qTosiDIJOHpX3m7Dh6Nu5TRD8Kov2kDRoLYX9GS5ZkrZWZhID~H7mtMabS770UNiuC9ANjjaOs1P9JweoirBduP6POrhjwBYitFFhR~qE6C3jB6CabDKd3Ym1aO9avmiZBfl~O12-bbTueAYUB5Ij7~ZCF7dCT2~AMj12n-pz9J25a-MiW07aDoXd8ujxvNXUX5ZPk-JM6El3mc6y6A2olrRAgSkH5QedzkaK-e~t6MaFnz32GQpOW00QkoiqGdN4tB6tpkpcnNW-ClXI1-~1hZMJ9a1ow__"
            
            if let urlString = URL(string: url) {
                VideoControlBar(viewModel: VideoPlayerViewModel(url: urlString))
            }
        }
    }
}
