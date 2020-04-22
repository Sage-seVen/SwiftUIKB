//
//  MVVMImplementedView.swift
//  SwiftUIKB
//
//  Created by Ashish Kumar on 21/04/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct MVVMImplementedView: View {
    
    @ObservedObject var model = ArticleListViewModel()
    
    var body: some View {
         List(model.articles) { article in
             
             VStack(alignment: .leading) {
             
             Text(article.title)
                 .lineLimit(nil)
             
             Text(article.description)
                 .foregroundColor(.secondary)
                 .lineLimit(nil)
                 
             }
             
        }.navigationBarTitle("TableViewAPIData")
     }
}

struct MVVMImplementedView_Previews: PreviewProvider {
    static var previews: some View {
        MVVMImplementedView()
    }
}
