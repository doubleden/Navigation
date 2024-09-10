//
//  SliderRepresentation.swift
//  Navigation
//
//  Created by Denis Denisov on 10/9/24.
//

import Foundation
import SwiftUI

struct SliderRepresentation: UIViewRepresentable {
    
    @Binding var currentValue: Double
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 5
        
        slider.addTarget(
            context.coordinator,
            action: #selector(Coordinator.sliderWasMoved),
            for: .valueChanged
        )
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.value = currentValue.toFloat()
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(currentValue: $currentValue)
    }
}

extension SliderRepresentation {
    final class Coordinator: NSObject {
        @Binding var currentValue: Double
        
        init(currentValue: Binding<Double>) {
            self._currentValue = currentValue
        }
        
        @objc func sliderWasMoved(_ slider: UISlider) {
            currentValue = Double(slider.value)
        }
    }
}

private extension Double {
    func toFloat() -> Float {
        Float(self)
    }
}
