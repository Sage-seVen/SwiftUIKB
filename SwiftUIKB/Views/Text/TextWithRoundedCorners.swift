//
//  TextWithRoundedCorners.swift
//  SwiftUIKB
//
//  Created by Sage_seVen on 26/03/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct TextWithRoundedCorners: View {
    let textInput:String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height:50)
            .foregroundColor(.white)
            .overlay(
                Text(textInput).foregroundColor(.black)
        )
    }
}

struct TextWithRoundedCorners_Previews: PreviewProvider {
    static var previews: some View {
        TextWithRoundedCorners(textInput: "Sample Label").previewLayout(.sizeThatFits)
    }
}
