//
//  TextFieldWithPlaceholder.swift
//  SwiftUIKB
//
//  Created by Sage_seVen on 13/04/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct TextFieldWithPlaceholder: View {
    let placeholderInput: String
    @State private var textFieldInput: String = ""
    var body: some View {
        TextField(placeholderInput, text: $textFieldInput)
            .textFieldStyle(RoundedBorderTextFieldStyle())
    }
}

struct TextFieldWithPlaceholder_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldWithPlaceholder(placeholderInput: "Hi Hi").previewLayout(.sizeThatFits)
    }
}

