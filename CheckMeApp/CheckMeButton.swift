//
//  CheckMeButton.swift
//  CheckMeApp
//
//  Created by Иван on 10/27/20.
//

import SwiftUI

struct CheckMeButton: View {
    @Binding var showAlert: Bool
    var score: Int
    
    var body: some View {
        Button("Проверь меня!") {
            showAlert = true
        }
            .alert(isPresented: $showAlert) {
            Alert(title: Text("Your Score"), message: Text("\(Int(score))"))
        }
    }
}

struct CheckMeButton_Previews: PreviewProvider {
    static var previews: some View {
        CheckMeButton(showAlert: .constant(true), score: 5)
    }
}
