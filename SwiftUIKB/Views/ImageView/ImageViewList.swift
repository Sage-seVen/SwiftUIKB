//
//  ImageViewList.swift
//  SwiftUIKB
//
//  Created by Ashish Kumar on 10/04/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct ImageViewList: View {
    var body: some View {
        List{
            NavigationLink(destination: ContactCardImageView()) {
                Text("Contact Card ImageView")
            }
            NavigationLink(destination: CustomSizeImageView()) {
                Text("Custom Size ImageView")
            }
            NavigationLink(destination: IconImageview()) {
                Text("Icon ImageView")
            }
        }.navigationBarTitle("ImageViewList", displayMode: .inline)
    }
}

struct ImageViewList_Previews: PreviewProvider {
    static var previews: some View {
        ImageViewList()
    }
}
