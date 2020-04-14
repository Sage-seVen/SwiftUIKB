//
//  TextFieldWithDescription.swift
//  SwiftUIKB
//
//  Created by Sage_seVen on 26/03/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct TextFieldWithDescription: View {
    let descriptionLabelInput:String
    var placeholderInput:String = ""
    @State var textFieldInput: String = ""
    var body: some View {
        VStack(alignment: .leading) {
            Text(descriptionLabelInput)
                .font(.headline)
                .bold()
            TextField(placeholderInput, text: $textFieldInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
}

struct TextFieldWithDescription_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldWithDescription(descriptionLabelInput: "UserName").previewLayout(.sizeThatFits)
    }
}
