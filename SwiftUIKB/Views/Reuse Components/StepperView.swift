//
//  StepperView.swift
//  SwiftUIKB
//
//  Created by Sage_seVen on 14/04/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct StepperView: View {
    @State private var integerInput: Int = 0
    @State private var decimalInput: Double = 0.0
    @State var stepped = false
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.white,.blue]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            VStack{
                
                //Normal Stepper
                Stepper(value: $integerInput, in: 0...7) {Text("Quantity: \(integerInput)")}.padding()
                
                //Stepper With Closures
                Stepper(value: $decimalInput, in: 2...5, step: 0.50, onEditingChanged: { (onEditingChanged) in
                    print("I am Changed")
                }, label: {Text("Kilos: \(decimalInput, specifier: "%.2f")")}).padding()
            }
        }
    }
}

struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
    }
}
