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
                    Image(systemName: "1.circle")
                    Text("First")
                }
                .tag(TabViewPage.first)
            
            SecondView()
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Second")
                }
                .tag(TabViewPage.second)
            
            ThirdView()
                .tabItem {
                    Image(systemName: "3.circle")
                    Text("Third")
                }
                .tag(TabViewPage.third)
        }
        .environmentObject(tabScreenVM)
    }
}

#Preview {
    TabScreenView()
}
