//
//  ArticleViewModel.swift
//  SwiftUIKB
//
//  Created by Ashish Kumar on 21/04/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import Foundation

class ArticleViewModel: Identifiable {
    
    let id = UUID()
    
    let article: Article
    
    init(article: Article) {
        self.article = article
    }
    
    var title: String {
        return self.article.title
    }
    
    var description: String {
        return self.article.description ?? ""
    }
    
    
}



