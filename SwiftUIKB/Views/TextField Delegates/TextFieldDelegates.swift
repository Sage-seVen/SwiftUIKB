//
//  TextView Delegates.swift
//  SwiftUIKB
//
//  Created by Ashish Kumar on 07/04/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct TextFieldDelegates: View {
    
    @State var userName = String()
    @State var password  = String()
    @State var number = String()
    @State var focused: [Bool] = [true, false, false]
    @State var alertIsVisible = false
    
    var body: some View {
        ZStack {
            GradientOne()
            VStack{
                Text("This View is made using UIKit Representable which replicates tapping return to next field")
                    .font(.headline)
                Spacer()
                VStack(alignment:.leading){
                    Text("Username:")
                        .font(.headline)
                        .bold()
                    TextFieldTyped(keyboardType: .default, returnVal: .next, tag: 0, text: $userName, isfocusAble: $focused)
                        .frame(width: 350, height: 30)
                        .padding()
                        .background(Color.white)
                    //.textFieldStyle(RoundedBorderTextFieldStyle()) this mod is not working
                    Text("Your Username is-> \(userName)")
                        .foregroundColor(.white)
                        .padding(.bottom,20)
//                    Divider()
                    Text("Phone:")
                        .font(.headline)
                        .bold()
                    TextFieldTyped(keyboardType: .numberPad, returnVal: .next, tag: 1, text: $number, isfocusAble: $focused)
                        .frame(width: 350, height: 30)
                        .padding()
                        .background(Color.white)
                    Text("Your Number is-> \(number)")
                        .foregroundColor(.white)
                        .padding(.bottom,20)
//                    Divider()
                    Text("Password:")
                        .font(.headline)
                        .bold()
                    TextFieldTyped(keyboardType: .default, returnVal: .next, tag: 2, text: $password, isfocusAble: $focused)
                        .frame(width: 350, height: 30)
                        .padding()
                        .background(Color.white)
                    Text("Your Password is-> \(password)")
                        .foregroundColor(.white)
                }
                Spacer()
                VStack(alignment:.center){
                    Button(action: {
                        self.alertIsVisible = true
                    }) {
                        Text("Login")
                            .font(.system(size: 25))
                            .fontWeight(.heavy)
                            .foregroundColor(.blue)
                            .padding(.horizontal)
                    }
                    .alert(isPresented: $alertIsVisible) { () -> Alert in
                        return Alert(title: Text("Alert"), message: Text("Login Sucessfull"), dismissButton: .default(Text("Okay")))
                    }
                }
                Spacer()
            }.padding()
        }
    }
}

struct TextView_Delegates_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldDelegates()
    }
}
