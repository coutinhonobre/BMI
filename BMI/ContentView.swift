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
    
    var body: some View {
        
        return VStack {
            TextField("Enter your height...", text: $height).disableAutocorrection(true)
            TextField("Enter your weight...", text: $weight).disableAutocorrection(true)
            Button("CALCULATE") {
                
            }
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

