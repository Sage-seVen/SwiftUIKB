//
//  TextFieldClosures.swift
//  SwiftUIKB
//
//  Created by Ashish Kumar on 08/04/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct TextFieldClosures: View {
    @State var firstName = String()
    @State var secondName = String()
    @State var value : CGFloat = 0
    
    var body: some View {
        ZStack{
            VStack{
                Text("Enter FirstName")
                .font(.headline)
                .bold()
                TextField("Enter your FirstName", text: $firstName, onEditingChanged: { (onEditingChanged) in
                    print("Executing this as you tap the textField or press return on keyboard.")
                }) {
                    print("Executing this when you press return on the keyboard.")
                }
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                
                Text("Your Username is \(firstName)")
                    .padding(.bottom, 100)
                
                Text("Enter LastName")
                .font(.headline)
                .bold()
                TextField("Enter your LastName", text: $secondName, onEditingChanged: { (onEditingChanged) in
                    print("Executing this as you tap the textField or press return on keyboard.")
                }) {
                    print("Executing this when you press return on the keyboard.")
                }
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                
                Text("Your Username is \(secondName)")
            }
        .padding()
            .offset(y: -self.value)
            .animation(.spring())
            .onAppear {
                
                NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: .main) { (noti) in
                    let value = noti.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! CGRect
                    let height = value.height
                    
                    self.value = height
                }
                
                NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: .main) { (noti) in

                    self.value = 0
                }
            }
        }
    }
}

struct TextFieldClosures_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldClosures()
    }
}
