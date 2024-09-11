//
//  TabScreenViewModel.swift
//  Navigation
// 
//  Created by Denis Denisov on 8/9/24.
//

import Combine
import Foundation

enum TabViewPage {
    case first, second, third
}

final class TabScreenViewModel: ObservableObject {
    @Published var tabViewPage: TabViewPage = .first
    @Published var pathsForItemsInSecondView: [Int] = []
    
    func openItem2InSecondView() {
        tabViewPage = .second
        pathsForItemsInSecondView.append(2)
    }
}
