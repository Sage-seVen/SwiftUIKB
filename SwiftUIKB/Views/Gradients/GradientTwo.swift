//
//  GradientTwo.swift
//  SwiftUIKB
//
//  Created by Sage_seVen on 14/04/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

//Visions of Grandeur

struct GradientTwo: View {
    let colorOne = Color(red:0.00, green:0.00, blue:0.27, opacity:1.00)
    let colorTwo = Color(red:0.11, green:0.71, blue:0.88, opacity:1.00)
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [colorOne,colorTwo]), startPoint: .bottom, endPoint: .top).edgesIgnoringSafeArea(.all)
    }
}

struct GradientTwo_Previews: PreviewProvider {
    static var previews: some View {
        GradientTwo()
    }
}
