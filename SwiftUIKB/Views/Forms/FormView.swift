//
//  FormView.swift
//  SwiftUIKB
//
//  Created by Sage_seVen on 05/04/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct FormView: View {
    
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var number: String = ""
    @State private var address: String = ""
    @State private var terms: Bool = false
    @State var countryValue = 0
    @State var genderValue = 0
    @State var registerAlert = false
    @ObservedObject var passwordChecker = PasswordChecker()
    
    let countries = ["India","US","Mexico","Russia","Singapore","Brazil"]
    let gender = ["Male", "Female"]
    
    var body: some View {
        Form {
            Section(header: Text("Profile Picture")){
                Image("NinjaIcon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 380, height: 200, alignment:.center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color(.lightGray),lineWidth: 5))
            }
            Section(header: Text("Your Info")) {
//                TextField("Name", text: $name)
//                TextField("Email", text: $email).keyboardType(.emailAddress)
//                TextField("Number", text: $number).keyboardType(.numberPad)
//                TextField("Address", text: $address)
                TextFieldWithDescription(descriptionLabelInput: "Name", textFieldInput: name)
                TextFieldWithDescription(descriptionLabelInput: "Email", placeholderInput: "Enter Email", textFieldInput: email).keyboardType(.emailAddress)
                TextFieldWithDescription(descriptionLabelInput: "Phone", placeholderInput: "Enter Number", textFieldInput: number).keyboardType(.numberPad)
                TextFieldWithDescription(descriptionLabelInput: "Address", placeholderInput: "Enter Address", textFieldInput: address).keyboardType(.namePhonePad)
                
                Picker("Country", selection: $countryValue){
                    ForEach(0..<self.countries.count){
                        Text(self.countries[$0])
                    }
                }
                Picker(selection: $genderValue, label: Text("Gender")) {
                    ForEach(0..<self.gender.count){
                        Text(self.gender[$0])
                    }
                }.pickerStyle(SegmentedPickerStyle())
            }
            Section(header: Text("Password")) {
                SecureField("Password", text: $passwordChecker.password)
                if self.passwordChecker.password.isEmpty == false {
                    PasswordStrengthView(level: self.passwordChecker.level)
                }
            }
            Section {
                if self.passwordChecker.level.rawValue >= 2 {
                    Toggle(isOn: $terms) {
                        Text("Accept the terms and conditions")
                    }
                    if self.terms {
                        Button(action: {
                            print("Account Registered")
                            self.registerAlert = true
                        }) {
                            Text("Register")
                        }.alert(isPresented: $registerAlert) { () -> Alert in
                            Alert(title: Text("Done ☑️"), message: Text("Successfully Registered"), dismissButton: .default(Text("Okay")))
                        }
                    }
                }
            }
        }
        .navigationBarTitle("Registration Form", displayMode: .inline)
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
