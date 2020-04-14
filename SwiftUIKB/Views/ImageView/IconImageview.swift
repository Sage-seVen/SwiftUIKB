//
//  IconImageview.swift
//  SwiftUIKB
//
//  Created by Sage_seVen on 14/04/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct IconImageview: View {
    var body: some View {
        ZStack{
            GradientTwo()
            HStack {
                IconImage()
                IconImage()
                IconImage()
            }
        }
    }
}

struct IconImageview_Previews: PreviewProvider {
    static var previews: some View {
        IconImageview()
    }
}

struct IconImage: View {
    var body: some View {
        VStack(alignment: .center){
            Image("NinjaIcon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
            Text("Ninja")
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }.frame(width: 100, height: 100)
    }
}
