//
//  Transitions.swift
//  SwiftUIKB
//
//  Created by Sage_seVen on 28/04/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct Transitions: View {
    @State var show = false
    //let showValue : Int = true ? 1 : 0
    var showValue:Int {
        if show{
            return 1
        }
        else{
            return 0
        }
    }
    let views = [Image(systemName: "lock"), Image("")]
    var body: some View {
        VStack {
            Text("Dope Content")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(4)
                .animation(.spring())
            
            Image("MaskedMen")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: show ? 400 : 300, height: show ? 600 : 300)
                .clipped()
                .cornerRadius(show ? 0 : 30)
                .shadow(radius: 30)
                .blur(radius:show ? 0: 30)
                .overlay(views[showValue].resizable().foregroundColor(.white).frame(width: 25, height: 35))
                .padding()
                .animation(.spring())
            
            Button(action: {
                withAnimation{
                    self.show.toggle()
                }
            }) {
                Text("Unlock")
                    .font(.system(size: 25))
                    .fontWeight(.semibold)
            }
            
        }
    }
}

struct Transitions_Previews: PreviewProvider {
    static var previews: some View {
        Transitions()
    }
}

struct LockIcon: View {
    var body: some View {
        Image(systemName: "lock")
            .resizable()
            .foregroundColor(.white)
            .frame(width: 25, height: 35)
    }
}
