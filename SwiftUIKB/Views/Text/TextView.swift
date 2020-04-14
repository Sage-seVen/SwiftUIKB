//
//  TextView.swift
//  SwiftUIKB
//
//  Created by Sage_seVen on 26/03/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        ZStack{
            //Have added color for testing now, to see layouts properly, will remove later
            Color(red:0.18, green:0.80, blue:0.44, opacity:1.00).edgesIgnoringSafeArea(.all)
            VStack {
                Text("Master View Containing Texts / Labels ")
                    .font(.system(size: 22))
                    .bold()
                Spacer()
                
                //Normal Text Modifiers
                VStack {
                    Text("Sample Text").foregroundColor(Color.blue)
                    Text("Text Kerning Example").kerning(5)
                    Text("Text with Line Limit Sample Text").lineLimit(5).lineSpacing(10)
                    Text("Text with center alignment").multilineTextAlignment(.center)
                }
                
                //Different shapes and styles created using advanced modifiers
                VStack {
                    TextWithRectCorners(textInput: "Sample Text With Rect Corners")
                    TextAndImageWithRectCorners(textInput: "Sample Text", imageNameInput: "person.fill")
                    TextWithRoundedCorners(textInput: "Sample Label With Rounded Corners")
                    TextAndImageWithRoundedCorners(textInput: "SampleText", imageNameInput: "pencil")
                    TextWithRoundedCornersAndBorder(textInput: "TextWithRoundedCornersAndBorder")
                }
                
                Spacer()
            }.padding(.all)
        }.navigationBarTitle("Texts")
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
