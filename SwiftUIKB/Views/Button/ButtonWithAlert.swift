//
//  ButtonWithAlert.swift
//  SwiftUIKB
//
//  Created by Sage_seVen on 13/04/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct ButtonWithAlert: View {
    let buttonName:String
    @State private var showingAlert = false
    var body: some View {
        Button(action: {
            self.showingAlert = true
            print("I am Alerting : Add Action Here")
        }) {
            Text(buttonName)
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .frame(width: 200, height: 70)
        }.alert(isPresented:$showingAlert) {
            Alert(title: Text("Are you sure you want to delete this?"), message: Text("This action cannot be undone"), primaryButton: .destructive(Text("Delete")) {
                print("Deleting...")
                }, secondaryButton: .cancel())
        }.background(Color.red)
        .overlay(Rectangle().stroke(Color.black,lineWidth: 1))
        
    }
}

struct ButtonWithAlert_Previews: PreviewProvider {
    static var previews: some View {
        ButtonWithAlert(buttonName: "Delete").previewLayout(.sizeThatFits)
    }
}
