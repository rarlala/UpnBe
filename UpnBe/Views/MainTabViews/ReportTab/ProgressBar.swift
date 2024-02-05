//
//  ProgressBar.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/05.
//

import SwiftUI

struct ProgressBar: View {
    var geometry: GeometryProxy
    var currentCount: CGFloat
    var maxCount: CGFloat
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .frame(height: 20)
                .foregroundColor(Color.background3)
                .cornerRadius(20)
            
            Rectangle()
                .frame(width: geometry.size.width * (currentCount / maxCount), height: 20)
                .foregroundStyle(Color.color1)
                .cornerRadius(20)
        }
        .frame(height: 20)
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            ProgressBar(geometry: geometry,
                        currentCount: 50,
                        maxCount: 100)
        }
    }
}
