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
    @Published var isShowDetailsOf2 = false
    
    func openItem2InSecondView() {
        tabViewPage = .second
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) { [unowned self] in
            isShowDetailsOf2.toggle()
        }
    }
}
