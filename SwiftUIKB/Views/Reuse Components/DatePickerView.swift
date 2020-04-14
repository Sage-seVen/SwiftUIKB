//
//  DatePickerView.swift
//  SwiftUIKB
//
//  Created by Sage_seVen on 14/04/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct DatePickerView: View {
    @State private var date = Date()
    var body: some View {
        VStack {
            
            //Date Picker in a Form
            Form{
                DatePicker(selection: $date, label: {Text("Date of Birth")})
            }
            //Free Range
            DatePicker(selection: $date, label: { Text("Select Date") })
            
            //Cannot Select Date from Past
            DatePicker(selection: $date, in: Date()... , label: {Text("From Today")})
            
            //Only Time
            DatePicker(selection: $date, displayedComponents: .hourAndMinute, label: {Text("Alarm Time")})
        }
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView().previewLayout(.sizeThatFits)
    }
}
