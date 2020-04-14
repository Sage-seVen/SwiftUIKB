//
//  TextFieldView.swift
//  SwiftUIKB
//
//  Created by Sage_seVen on 26/03/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct TextFieldView: View {
    var body: some View {
        ZStack{
            //Have added color for testing now, to see layouts properly, will remove later
            //Color(red:1.00, green:0.47, blue:0.47, opacity:1.00).edgesIgnoringSafeArea(.all)
            GradientThree()
            VStack(alignment: .leading){
                Text("Master View Containing TextFields")
                    .font(.system(size: 22))
                    .bold()
                
                Spacer()
                //Add Views Here
                TextFieldWithFixedSize(width: 250, height: 50)
                TextFieldWithPlaceholder(placeholderInput: "I have a Placeholder")
                TextFieldWithDescription(descriptionLabelInput: "Username")
                TextFieldWithSideDescription(descriptionLabelInput: "Name")
                TextFieldWithSideDescription(descriptionLabelInput: "Phone").keyboardType(.numberPad)
                SecureTextField()
                Spacer()
            }.padding()
        }.navigationBarTitle("TextFields")
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
