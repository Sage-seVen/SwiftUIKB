//
//  AnimationOne.swift
//  SwiftUIKB
//
//  Created by Sage_seVen on 28/04/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct AnimationOne: View {
    @State var animationAmount:CGFloat = 1
    var body: some View {
        Button(action: {
            self.animationAmount += 1
        }) {
            Text("Tap Me")
        }
        .padding(50)
        .background(Color.blue)
        .foregroundColor(.white)
        .clipShape(Circle())
        .scaleEffect(animationAmount)
        .animation(.default)
    }
}

struct AnimationOne_Previews: PreviewProvider {
    static var previews: some View {
        AnimationOne()
    }
}
