//
//  AnimationTwo.swift
//  SwiftUIKB
//
//  Created by Sage_seVen on 29/04/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct AnimationTwo: View {
    @State var animationAmount:CGFloat = 1
    @State var animationAmount2:CGFloat = 0.5
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).edgesIgnoringSafeArea(.all)
            VStack {
                Button(action: {}) {
                    Text("Listening")
                }
                .padding(50)
                .background(Color.red)
                .foregroundColor(.white)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.red)
                        .scaleEffect(animationAmount)
                        .opacity(Double(2-animationAmount))
                        .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: false))
                ).onAppear{
                    self.animationAmount=2
                }
                .padding(100)
                
                Button(action: {
                    self.animationAmount2 += 0.5
                }) {
                    Text("Tap").font(.title)
                }
                .padding(50)
                .background(Color.red)
                .foregroundColor(.white)
                .clipShape(Circle())
                .scaleEffect(animationAmount2)
                .animation(Animation.easeInOut(duration: 1).repeatCount(3, autoreverses: true))
            .padding(100)
            }
        }
    }
}

struct AnimationTwo_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTwo()
    }
}
