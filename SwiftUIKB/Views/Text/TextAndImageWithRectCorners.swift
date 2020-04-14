//
//  TextAndImageWithRectCorners.swift
//  SwiftUIKB
//
//  Created by Sage_seVen on 26/03/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct TextAndImageWithRectCorners: View {
    let textInput:String
    let imageNameInput:String
    var body: some View {
        Rectangle().frame(height:50)
            .foregroundColor(.white).overlay(HStack{
                Image(systemName: imageNameInput)
                Text(textInput).foregroundColor(.black)
                })
    }
}


struct TextAndImageWithRectCorners_Previews: PreviewProvider {
    static var previews: some View {
        TextAndImageWithRectCorners(textInput: "Sample Text", imageNameInput: "person.fill").previewLayout(.sizeThatFits)
    }
}
