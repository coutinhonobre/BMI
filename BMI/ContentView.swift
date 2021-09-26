//
//  ContentView.swift
//  BMI
//
//  Created by Igor Coutinho Ferreira Nobre on 25/09/21.
//

import SwiftUI

struct ContentView: View {
    @State private var height: String = ""
    @State private var weight: String = ""
    @State private var result: Double = 0.0
    @State private var showResult: String = ""
    
    var body: some View {
        
        return VStack {
            Text("Height").foregroundColor(.black)
            TextField("Enter your height...", text: $height)
                .keyboardType(.decimalPad)
            Text("Weight").foregroundColor(.black)
            TextField("Enter your weight...", text: $weight)
                .keyboardType(.decimalPad)
            Button("CALCULATE") {
                let heightTemp: Double? = Double(height)
                let weightTemp: Double? = Double(weight)
                
                result = (weightTemp ?? 1 / (pow(heightTemp ?? 1, 2)))
                if (result < 18.5) {
                    showResult = "Abaixo do peso"
                } else if (result <= 24.9){
                    showResult = "Peso ideal (parabéns)"
                } else if (result <= 29.9){
                    showResult = "Levemente acima do peso"
                } else if (result <= 34.9){
                    showResult = "Obesidade grau I"
                } else if (result <= 39.9){
                    showResult = "Obesidade grau II (severa)"
                } else {
                    showResult = "Obesidade grau III (mórbida"
                }
                
            }
            Text(showResult).foregroundColor(.green)
        }
        .padding()
        .foregroundColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

