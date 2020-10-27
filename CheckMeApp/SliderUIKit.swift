//
//  SliderUIKit.swift
//  CheckMeApp
//
//  Created by Иван on 10/27/20.
//

import SwiftUI

struct SliderUIKit: UIViewRepresentable {

    
    @Binding var value : Double
    @Binding var randomValue: Int
    @Binding var alpha: CGFloat
    
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider(frame: .zero)
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.value = Float(value)
        slider.thumbTintColor?.withAlphaComponent(setAlpha(randomValue: randomValue, value: value))
        slider.thumbTintColor = UIColor(.blue)
        
        
        slider.addTarget(context.coordinator,
                         action: #selector(Coordinator.valueChanged),
                         for: .valueChanged)
        
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.value = Float(value)
    }
    
    func makeCoordinator() -> SliderUIKit.Coordinator {
        Coordinator(value: $value)
    }
    
    func setAlpha(randomValue: Int, value: Double) -> CGFloat {
        return CGFloat(Double(randomValue)/value)
    }
}

extension SliderUIKit {
    class Coordinator: NSObject {
        @Binding var value: Double
        
        init(value: Binding<Double>) {
            self._value = value
        }
        
        @objc func valueChanged(_ sender: UISlider) {
            value = Double(sender.value)
        }
    }
}


struct SliderUIKit_Previews: PreviewProvider {
    static var previews: some View {
        SliderUIKit(value: .constant(50), randomValue: .constant(5), alpha: .constant(1))
    }
}
