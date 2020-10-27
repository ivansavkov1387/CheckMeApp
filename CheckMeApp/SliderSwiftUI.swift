//
//  SliderSwiftUI.swift
//  CheckMeApp
//
//  Created by Иван on 10/27/20.
//

import SwiftUI

struct SliderSwiftUI: View {
    @Binding var value: Double
    @Binding var randomValue: Int
    @Binding var alpha: CGFloat
    
    var body: some View {
        SliderUIKit(value: $value, randomValue: $randomValue, alpha: $alpha)
    }
}

struct SliderSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        SliderSwiftUI(value: .constant(50), randomValue: .constant(50), alpha: .constant(1))
    }
}
