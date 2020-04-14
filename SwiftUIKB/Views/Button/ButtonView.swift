//
//  ButtonView.swift
//  SwiftUIKB
//
//  Created by Sage_seVen on 09/04/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct ButtonView: View {
    
    
    var body: some View {
        ZStack {
            GradientTwo()
            VStack{
                Spacer()
                NormalButton(buttonName: "Tap Me")
                    .padding()
                Spacer()
                ButtonWithAlert(buttonName: "Alert Me")
                    .padding()
                Spacer()
            }
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
