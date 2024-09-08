//
//  ThirdView.swift
//  Navigation
//
//  Created by Denis Denisov on 8/9/24.
//

import SwiftUI

struct ThirdView: View {
    @State private var isPresented = false
    
    var body: some View {
        VStack {
            Button("Open modal") {
                isPresented.toggle()
            }
            .buttonStyle(.borderedProminent)
        }
        .sheet(isPresented: $isPresented) {
            ThirdModalView()
                .presentationDragIndicator(.visible)
        }
    }
}

#Preview {
    ThirdView()
}
