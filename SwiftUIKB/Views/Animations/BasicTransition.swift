//
//  BasicTransition.swift
//  SwiftUIKB
//
//  Created by Sage_seVen on 29/04/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct BasicTransition: View {
    @State var show = false
    var body: some View {
        VStack {
            Button(action: {
                withAnimation{
                    self.show.toggle()
                }
            }) {
                Text("Tap").fontWeight(.bold)
            }
            
            if show{
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 200, height: 200)
                    .transition(.scale)
            }
        }
    }
}

struct BasicTransition_Previews: PreviewProvider {
    static var previews: some View {
        BasicTransition()
    }
}
