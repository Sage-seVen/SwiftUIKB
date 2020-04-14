//
//  TextFieldWithSideDescription.swift
//  SwiftUIKB
//
//  Created by Sage_seVen on 26/03/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct TextFieldWithSideDescription: View {
    let descriptionLabelInput:String
    @State var textFieldInput: String = ""
    var body: some View {
        HStack(alignment: .center) {
            Text("\(descriptionLabelInput):")
                .font(.headline)
                .bold()
            TextField("", text: $textFieldInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }.padding()
    }
}

struct TextFieldWithSideDescription_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldWithSideDescription(descriptionLabelInput: "Name").previewLayout(.sizeThatFits)
    }
}
