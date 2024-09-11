//
//  SecondView.swift
//  Navigation
//
//  Created by Denis Denisov on 8/9/24.
//

import SwiftUI

struct SecondView: View {
    @EnvironmentObject private var tabScreen: TabScreenViewModel
    private let numbers = [1, 2, 3, 4]
    
    var body: some View {
        NavigationStack(path: $tabScreen.pathsForItemsInSecondView) {
            List(numbers, id: \.self) { number in
                NavigationLink(value: number) {
                    Text(number.formatted())
                }
            }
            .navigationTitle("Second")
            .navigationDestination(for: Int.self) { value in
                SecondDetailsView(number: value)
            }
        }
    }
}

#Preview {
    NavigationStack {
        SecondView()
    }
    .environmentObject(TabScreenViewModel())
}
