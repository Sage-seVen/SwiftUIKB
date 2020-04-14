//
//  TableView.swift
//  SwiftUIKB
//
//  Created by Sage_seVen on 14/04/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct TableView: View {
    let dataArray = ["CyberPunk 2077 💎", "Last of Us 🩸", "Uncharted 🏺", "Death Stranding 🎒"]
    var body: some View {
        List{
            Text(dataArray[0])
            Text(dataArray[1])
            Text(dataArray[2])
            Text(dataArray[3])
        }.navigationBarTitle("Basic TableView",displayMode: .inline)
    }
}

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        TableView()
    }
}
