//
//  TabsView.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/05.
//

import SwiftUI

struct TabsView: View {
    @State private var selectedTabIndex = 2
    
    var body: some View {
        TabView(selection: $selectedTabIndex) {
            ProfileView()
                .tabItem {
                    Image(selectedTabIndex == 0 ? "icon-profile-on" : "icon-profile-off")
                }
                .tag(0)
            ReportView()
                .tabItem {
                    Image(selectedTabIndex == 1 ? "icon-report-on" : "icon-report-off")
                }
                .tag(1)
            ShortFormView()
                .tabItem {
                    Image(selectedTabIndex == 2 ? "icon-shortform-on" : "icon-shortform-off")
                }
                .tag(2)
            SaveView()
                .tabItem {
                    Image(selectedTabIndex == 3 ? "icon-save-on" : "icon-save-off")
                }
                .tag(3)
            FilterView()
                .tabItem {
                    Image(selectedTabIndex == 4 ? "icon-filter-on" : "icon-filter-off")
                }
                .tag(4)
        }
    }
}

struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView()
    }
}
