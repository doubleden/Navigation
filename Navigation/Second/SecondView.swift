//
//  SecondView.swift
//  Navigation
//
//  Created by Denis Denisov on 8/9/24.
//

import SwiftUI

struct SecondView: View {
    private let numbers = [1, 2, 3, 4]
    
    var body: some View {
        NavigationStack {
            List(numbers, id: \.self) { number in
                NavigationLink(number.formatted()) {
                    SecondDetailsView(number: number)
                }
            }
        }
        .navigationTitle("Second")
    }
}

#Preview {
    NavigationStack {
        SecondView()
    }
}
