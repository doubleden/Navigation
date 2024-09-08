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
        NavigationStack {
            List(numbers, id: \.self) { number in
                NavigationLink(number.formatted()) {
                    SecondDetailsView(number: number)
                }
            }
            .navigationTitle("Second")
            .navigationDestination(
                isPresented: $tabScreen.isShowDetailsOf2
            ) {
                SecondDetailsView(number: numbers[1])
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
