//
//  TextWithRoundedCornersAndBorder.swift
//  SwiftUIKB
//
//  Created by Ashish Kumar on 30/03/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct TextWithRoundedCornersAndBorder: View {
    let textInput: String
    var body: some View {
        Text(textInput)
            .fontWeight(.semibold)
            .font(.title)
            .foregroundColor(.black)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black, lineWidth: 5))
    }
}

struct TextWithRoundedCornersAndBorder_Previews: PreviewProvider {
    static var previews: some View {
        TextWithRoundedCornersAndBorder(textInput: "TextWithRoundedCornersAndBorder").previewLayout(.sizeThatFits)
    }
}
