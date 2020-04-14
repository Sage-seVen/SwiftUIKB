//
//  GradientOne.swift
//  SwiftUIKB
//
//  Created by Sage_seVen on 14/04/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

//Crystal Clear // Custom Gradient made using SwiftUI

struct GradientOne: View {
    let colorOne = Color(red:0.08, green:0.60, blue:0.34, opacity:1.00)
    let colorTwo = Color(red:0.08, green:0.34, blue:0.60, opacity:1.00)
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [colorOne,colorTwo]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
    }
}

struct GradientOne_Previews: PreviewProvider {
    static var previews: some View {
        GradientOne()
    }
}
