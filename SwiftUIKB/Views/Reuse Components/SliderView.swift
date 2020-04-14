//
//  SliderView.swift
//  SwiftUIKB
//
//  Created by Ashish Kumar on 11/04/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct SliderView: View {
    @State var sliderValue: Double = 1.0
    
    var body: some View {
        ZStack{
            Image("background-4").resizable().edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack{
                    Text("Value:").bold()
                    Spacer()
                    Text("\(String(format: "%.1f", sliderValue.rounded()))").bold()
                }.padding()
                
                HStack {
                    Text("1").bold()
                    Slider(value: $sliderValue, in: 1...100)
                    Text("100").bold()
                }.padding()
            }
        }.navigationBarTitle("Sliders")
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
