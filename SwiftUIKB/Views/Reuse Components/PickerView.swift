//
//  PickerView.swift
//  SwiftUIKB
//
//  Created by Ashish Kumar on 11/04/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct PickerView: View {
    
    @State var fromSelectedCurrency = 0
    @State var toSelectedCurrency = 0
    
    let currencies = ["SGD","MYR","EUR","USD","AUD","JPY","CNH","HKD","CAD","INR","DKK","GBP","RUB","NZD","MXN","IDR","TWD","THB","VND"]
    
    var body: some View {
        ZStack{
            GradientThree()
            VStack{
                Picker(selection: $fromSelectedCurrency, label: Text("From").bold()) {
                    ForEach(0..<currencies.count){
                        Text(self.currencies[$0]).bold()
                    }
                }.padding(.horizontal)
                
                Picker(selection: $toSelectedCurrency, label: Text("To").bold()) {
                    ForEach(0..<currencies.count){
                        Text(self.currencies[$0]).bold()
                    }
                }.padding(.horizontal)
                
                Spacer()
                
                Button(action: {
                    print("Action Button Pressed")
                }) {
                    Text("Convert")
                        .font(.system(size: 25))
                        .fontWeight(.heavy)
                        .foregroundColor(.blue)
                        .padding(.horizontal)
                }
            }
        }.navigationBarTitle("Pickers")
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
