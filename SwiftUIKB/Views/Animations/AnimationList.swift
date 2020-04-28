//
//  AnimationList.swift
//  SwiftUIKB
//
//  Created by Sage_seVen on 29/04/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct AnimationList: View {
    var body: some View {
        List{
            NavigationLink(destination: AnimationOne()) {
                Text("Animation One")
            }
            NavigationLink(destination: AnimationTwo()) {
                Text("Animation Two")
            }
            NavigationLink(destination: ExplicitAnimation()) {
                Text("Explicit Animation")
            }
            NavigationLink(destination: BasicTransition()) {
                Text("Basic Transition")
            }
            NavigationLink(destination: Transitions()) {
                Text("Custom Transition")
            }
        }.navigationBarTitle("Animations", displayMode: .inline)
    }
}

struct AnimationList_Previews: PreviewProvider {
    static var previews: some View {
        AnimationList()
    }
}
