//
//  FirstView.swift
//  Navigation
//
//  Created by Denis Denisov on 8/9/24.
//

import SwiftUI

struct FirstView: View {
    @EnvironmentObject private var tabScreenVM: TabScreenViewModel
    @State private var currentValue = 0.0
    
    var body: some View {
        VStack {
            Button("Open 2 in Second View") {
                tabScreenVM.openItem2InSecondView()
            }
            .buttonStyle(.borderedProminent)
            
            SliderRepresentation(currentValue: $currentValue)
            Text(Int(currentValue).formatted())
        }
        .padding()
    }
}

#Preview {
    FirstView()
        .environmentObject(TabScreenViewModel())
}
