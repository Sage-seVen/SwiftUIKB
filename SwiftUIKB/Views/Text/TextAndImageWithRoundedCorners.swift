//
//  TextAndImageWithRoundedCorners.swift
//  SwiftUIKB
//
//  Created by Sage_seVen on 26/03/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct TextAndImageWithRoundedCorners: View {
    let textInput:String
    let imageNameInput:String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(width: 410 ,height: 50)
            .foregroundColor(.white)
            .overlay(HStack{
                Image(systemName: imageNameInput)
                Text(textInput).foregroundColor(.black)
                }
        )
    }
}

struct TextAndImageWithRoundedCorners_Previews: PreviewProvider {
    static var previews: some View {
        TextAndImageWithRoundedCorners(textInput: "Sample Label", imageNameInput: "creditcard.fill")
            .previewLayout(.sizeThatFits)
    }
}
