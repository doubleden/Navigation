//
//  TabScreenViewModel.swift
//  Navigation
// 
//  Created by Denis Denisov on 8/9/24.
//

import Combine

enum TabViewPage {
    case first, second, third
}

final class TabScreenViewModel: ObservableObject {
    @Published var tabViewPage: TabViewPage = .first
    @Published var isShowDetailsOf2 = false
}
