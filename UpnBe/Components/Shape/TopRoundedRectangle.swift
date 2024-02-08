//
//  TopRoundedRectangle.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/07.
//

import SwiftUI

struct TopRoundedRectangle: Shape {
    var radius: CGFloat = .infinity

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}


struct TopRoundedRectangle_Previews: PreviewProvider {
    static var previews: some View {
        TopRoundedRectangle()
    }
}
