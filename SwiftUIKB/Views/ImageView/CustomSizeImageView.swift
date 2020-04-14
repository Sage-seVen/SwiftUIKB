//
//  CustomSizeImageView.swift
//  SwiftUIKB
//
//  Created by Ashish Kumar on 10/04/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct CustomSizeImageView: View {
    
    @State var dishName = String()
    var body: some View {
        ZStack{
            GradientOne()
            VStack(alignment: .center){
                Image("rice").resizable().aspectRatio(contentMode: .fit)
                Divider()
                VStack(alignment: .leading){
                    TextFieldWithDescription(descriptionLabelInput: "Dish Id", textFieldInput: "111")
                    TextFieldWithDescription(descriptionLabelInput: "Dish Name", textFieldInput: "Chicken Biryani")
                    TextFieldWithDescription(descriptionLabelInput: "Dish Type", textFieldInput: "Biryani")
                    TextFieldWithDescription(descriptionLabelInput: "Dish Rate", textFieldInput: "200")
                    TextFieldWithDescription(descriptionLabelInput: "Dish Quantity" , textFieldInput: "1")
                }
            }.padding(.all)
        }
    }
}

struct CustomSizeImageView_Previews: PreviewProvider {
    static var previews: some View {
        CustomSizeImageView()
    }
}

