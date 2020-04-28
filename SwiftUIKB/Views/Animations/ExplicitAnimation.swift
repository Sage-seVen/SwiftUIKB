//
//  ExplicitAnimation.swift
//  SwiftUIKB
//
//  Created by Sage_seVen on 29/04/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct ExplicitAnimation: View {
    @State var animationAmount:CGFloat = 0.0
    @State var animationAmount2:CGFloat = 0.0
    var body: some View {
        VStack {
            Button(action: {
                withAnimation{
                    self.animationAmount += 360
                }
            }) {
                Text("Tap").font(.title)
            }
            .padding(50)
            .background(Color.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .rotation3DEffect(.degrees(Double(animationAmount)), axis: (x: 1, y: 0, z: 0))
            .padding(100)
            
            Button(action: {
                withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)){
                    self.animationAmount2 += 360
                }
            }) {
                Text("Tap").font(.title)
            }
            .padding(50)
            .background(Color.green)
            .foregroundColor(.white)
            .clipShape(Circle())
            .rotation3DEffect(.degrees(Double(animationAmount2)), axis: (x: 0, y: 1, z: 0))
        }
    }
}

struct ExplicitAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ExplicitAnimation()
    }
}
