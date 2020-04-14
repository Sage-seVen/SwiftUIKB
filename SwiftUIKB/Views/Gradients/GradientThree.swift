//
//  GradientThree.swift
//  SwiftUIKB
//
//  Created by Sage_seVen on 14/04/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

//PurplePine

struct GradientThree: View {
    let colorOne = Color(red:0.13, green:0.00, blue:0.17, opacity:1.00)
    let colorTwo = Color(red:0.80, green:0.71, blue:0.83, opacity:1.00)
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [colorOne,colorTwo]), startPoint: .bottom, endPoint: .top).edgesIgnoringSafeArea(.all)
    }
}

struct GradientThree_Previews: PreviewProvider {
    static var previews: some View {
        GradientThree()
    }
}
