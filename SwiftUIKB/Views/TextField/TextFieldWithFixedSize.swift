//
//  TextFieldWithFixedSize.swift
//  SwiftUIKB
//
//  Created by Sage_seVen on 26/03/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct TextFieldWithFixedSize: View {
    let width:CGFloat
    let height:CGFloat
    @State private var textFieldInput: String = ""
    var body: some View {
        TextField("Custom Size TextField", text: $textFieldInput)
            .fixedSize()
            .frame(width: width, height: height)
            .border(Color.gray)
    }
}

struct TextFieldWithFixedSize_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldWithFixedSize(width: 200, height: 50).previewLayout(.sizeThatFits)
    }
}
