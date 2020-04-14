//
//  Toggles.swift
//  SwiftUIKB
//
//  Created by Sage_seVen on 14/04/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct Toggles: View {
    @State private var toggleSwitch = false
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.white,.red]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            VStack {
                
                //Normal toggle
                Toggle(isOn: $toggleSwitch){
                    Text("Me Toggle")
                }.padding()
                if toggleSwitch {
                    Text("Me On")
                }
                //Add CheckBox
            }
        }
    }
}

struct Toggles_Previews: PreviewProvider {
    static var previews: some View {
        Toggles()
    }
}
