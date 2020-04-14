//
//  CollectionView.swift
//  SwiftUIKB
//
//  Created by Sage_seVen on 14/04/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct CollectionView: View {
    let data = [DataModel(id: 1, name: "Fire", imageName: "flame"),
                DataModel(id: 2, name: "Bolt", imageName: "bolt.fill"),
                DataModel(id: 3, name: "Ant", imageName: "ant.circle.fill"),
                DataModel(id: 4, name: "Rabbit", imageName: "hare.fill")]
    var body: some View {
        //Text("Work in Progress!! 🛠")
        List {
            ForEach(data) { items in
                ForEach(0..<2) { item in
                    CollectionViewComponent(data: items)
                }
            }
        }.navigationBarTitle("CollectionView", displayMode: .inline)
        
    }
}

struct CollectionViewComponent: View {
    let data: DataModel
    var body: some View {
        VStack {
            HStack {
                ForEach(0..<2) { items in
                    Spacer()
                    Image(systemName: self.data.imageName)
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                    Spacer()
                }.padding(.bottom, 16)
            }
            HStack {
                Spacer()
                Text(self.data.name)
                Spacer()
                Text(self.data.name)
                Spacer()
            }
        }
    }
}


struct CollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionView()
    }
}
