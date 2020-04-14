//
//  TextWithRectCorners.swift
//  SwiftUIKB
//
//  Created by Sage_seVen on 26/03/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct TextWithRectCorners: View {
    let textInput:String
    var body: some View {
        Rectangle().frame(height:50)
            .foregroundColor(.white).overlay(Text(textInput).foregroundColor(.black))
    }
}

struct TextWithRectCorners_Previews: PreviewProvider {
    static var previews: some View {
        TextWithRectCorners(textInput: "Sample Text").previewLayout(.sizeThatFits)
    }
}
