//
//  ContentView.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/01.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowSheet: Bool = false

    var body: some View {
        TabsView()
            .environmentObject(TabObservableObject())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
