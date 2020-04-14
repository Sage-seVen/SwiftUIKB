//
//  ImageView.swift
//  SwiftUIKB
//
//  Created by Ashish Kumar on 10/04/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct ContactCardImageView: View {
    var body: some View {
        ZStack{
            Image("background-2").resizable().edgesIgnoringSafeArea(.all)
            VStack{
                Image("1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment:.center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white,lineWidth: 5))
                Text("Aaron Stone")
                    .font(Font.custom("", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                TextAndImageWithRoundedCorners(textInput: "+91987654321", imageNameInput: "phone.fill")
                TextAndImageWithRoundedCorners(textInput: "appservices@dxc.com", imageNameInput: "envelope.fill")
            }
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ContactCardImageView()
    }
}
