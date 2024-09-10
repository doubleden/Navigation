//
//  TabScreenView.swift
//  Navigation
//
//  Created by Denis Denisov on 8/9/24.
//

import SwiftUI

struct TabScreenView: View {
    @StateObject private var tabScreenVM = TabScreenViewModel()
    
    var body: some View {
        TabView(selection: $tabScreenVM.tabViewPage) {
            FirstView()
                .tabItem {
                    Label("First", systemImage: "1.circle")
                }
                .tag(TabViewPage.first)
            
            SecondView()
                .tabItem {
                    Label("Second", systemImage: "2.circle")
                }
                .tag(TabViewPage.second)
            
            ThirdView()
                .tabItem {
                    Label("Third", systemImage: "3.circle")
                }
                .tag(TabViewPage.third)
        }
        .environmentObject(tabScreenVM)
    }
}

#Preview {
    TabScreenView()
}
