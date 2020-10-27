//
//  RepeatButton.swift
//  CheckMeApp
//
//  Created by Иван on 10/27/20.
//

import SwiftUI

struct RepeatButton: View {
    @Binding var value : Int
    var body: some View {
        Button("Начать заново!") {
            value = getRandomValue()
        }
    }
    private func getRandomValue () -> Int {
        let randomValue = Int.random(in: 0...100)
        return randomValue
    }
}

struct RepeatButton_Previews: PreviewProvider {
    static var previews: some View {
        RepeatButton(value: .constant(5))
    }
}
