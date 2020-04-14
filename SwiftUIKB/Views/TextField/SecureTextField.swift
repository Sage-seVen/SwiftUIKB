//
//  SecureTextField.swift
//  SwiftUIKB
//
//  Created by Sage_seVen on 26/03/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

//Work: Have to add a Password toggler Here

struct SecureTextField: View {
    @State private var textFieldInput: String = ""
    var body: some View {
        HStack{
            Rectangle().foregroundColor(.white)
                .frame(height:50)
                .border(Color(.gray))
                .overlay(HStack{
                    SecureField("Password", text: $textFieldInput).foregroundColor(.black)
                    Image(systemName: "eye.fill").foregroundColor(.black)
                    }.padding())
        }
    }
}

struct SecureTextField_Previews: PreviewProvider {
    static var previews: some View {
        SecureTextField().previewLayout(.sizeThatFits)
    }
}
