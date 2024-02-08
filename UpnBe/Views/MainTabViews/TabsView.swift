//
//  TabsView.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/05.
//

import SwiftUI

class TabObservableObject: ObservableObject {
    @Published var selectedIndex = 1
}

struct TabsView: View {
    @EnvironmentObject var tab: TabObservableObject
    
    var body: some View {
        TabView(selection: $tab.selectedIndex) {
            ProfileView()
                .tabItem {
                    Image(tab.selectedIndex == 0 ? "icon-profile-on" : "icon-profile-off")
                }
                .tag(0)
            ReportView()
                .tabItem {
                    Image(tab.selectedIndex == 1 ? "icon-report-on" : "icon-report-off")
                }
                .tag(1)
            ShortFormView()
                .tabItem {
                    Image(tab.selectedIndex == 2 ? "icon-shortform-on" : "icon-shortform-off")
                }
                .tag(2)
            SaveView()
                .tabItem {
                    Image(tab.selectedIndex == 3 ? "icon-save-on" : "icon-save-off")
                }
                .tag(3)
            FilterView()
                .tabItem {
                    Image(tab.selectedIndex == 4 ? "icon-filter-on" : "icon-filter-off")
                }
                .tag(4)
        }
    }
}

struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView()
            .environmentObject(TabObservableObject())
    }
}
