//
//  FirstView.swift
//  Navigation
//
//  Created by Denis Denisov on 8/9/24.
//

import SwiftUI

struct FirstView: View {
    @EnvironmentObject private var tabScreenVM: TabScreenViewModel
    
    var body: some View {
        VStack {
            Button("Open 2 in Second View") {
                withAnimation {
                    tabScreenVM.tabViewPage = .second
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                    tabScreenVM.isShowDetailsOf2.toggle()
                }
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    FirstView()
        .environmentObject(TabScreenViewModel())
}
