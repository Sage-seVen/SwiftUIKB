//
//  NormalButton.swift
//  SwiftUIKB
//
//  Created by Sage_seVen on 13/04/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct NormalButton: View {
    let buttonName:String
    var body: some View {
        Button(action: {
            print("I am a Normal Button : Add Some Action")
        }) {
            HStack {
                Spacer()
                Text(buttonName)
                    .font(.title)
                    .foregroundColor(.black)
                Spacer()
            }
        }
        .background(Color(.orange))
        .overlay(Rectangle().stroke(Color.black,lineWidth: 2))
    }
}

struct NormalButton_Previews: PreviewProvider {
    static var previews: some View {
        NormalButton(buttonName: "Button").previewLayout(.sizeThatFits)
    }
}
