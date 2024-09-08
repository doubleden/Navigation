//
//  SecondDetailsView.swift
//  Navigation
//
//  Created by Denis Denisov on 8/9/24.
//

import SwiftUI

struct SecondDetailsView: View {
    let number: Int
    
    var body: some View {
        Text(number.formatted())
    }
}

#Preview {
    SecondDetailsView(number: 2)
}
