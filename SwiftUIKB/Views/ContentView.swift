//
//  ContentView.swift
//  SwiftUIKB
//
//  Created by Sage_seVen on 26/03/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red:0.39, green:0.43, blue:0.45).edgesIgnoringSafeArea(.all)
            NavigationView{
                List{
                    Section(header: Text("Texts and TextFields")){
                        NavigationLink(destination: TextView()){
                            Text("Texts")
                        }
                        NavigationLink(destination: TextFieldView()) {
                            Text("Textfields")
                        }
                        NavigationLink(destination: TextFieldDelegates()){
                            Text("TextField Delegates")
                        }
                        NavigationLink(destination: TextFieldClosures()) {
                            Text("TextField Closures")
                        }
                    }
                    
                    Spacer()
                    
                    Section(header: Text("Views representing Large Lists and Images")){
                        NavigationLink(destination: FormView()) {
                            Text("Forms")
                        }

                        NavigationLink(destination: ImageViewList()) {
                            Text("ImageViewList")
                        }
                        NavigationLink(destination: TableView()) {
                            Text("TableViews")
                        }
                        NavigationLink(destination: MVVMImplementedView()) {
                            Text("MVVM ImplementedTableView")
                        }
                        NavigationLink(destination: CollectionView()) {
                            Text("CollectionViews")
                        }
                        NavigationLink(destination: AnimationList()) {
                            Text("Animations")
                        }
                    }
                    
                    Spacer()
                    
                    Section(header: Text("Basic Reuse Components")) {
                        NavigationLink(destination: ButtonView()) {
                            Text("Buttons")
                        }
                        NavigationLink(destination: SliderView()) {
                            Text("SliderView")
                        }
                        NavigationLink(destination: StepperView()) {
                            Text("Steppers")
                        }
                        NavigationLink(destination: PickerView()) {
                            Text("PickerView")
                        }
                        NavigationLink(destination: DatePickerView()) {
                            Text("Date and Time Pickers")
                        }
                        NavigationLink(destination: Toggles()) {
                            Text("Toggles")
                        }
                    }
                    
                }.navigationBarTitle("Swift UI KB")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

