//
//  ContentView.swift
//  CheckMeApp
//
//  Created by Иван on 10/27/20.
//

import SwiftUI

struct ContentView: View {
    @State var value : Double = 50
    @State var showAlert: Bool = false
    @State var randomValue = Int.random(in: 1...100)
    @State var alpha : CGFloat = 1
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Подвиньте слайдер как можно ближе к \(randomValue)")
            
            SliderSwiftUI(value: $value, randomValue: $randomValue, alpha: $alpha)
            CheckMeButton(showAlert: $showAlert, score: computeScore())
            RepeatButton(value: $randomValue)
            
        }.padding()
    }
    
    private func computeScore() -> Int {
        let difference = abs(randomValue - lround(value))
        return 100 - difference
    }
    
    private func alphaForSlider() {
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
