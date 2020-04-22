//
//  ArticleListViewModel.swift
//  SwiftUIKB
//
//  Created by Ashish Kumar on 21/04/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import Foundation
import Combine


class ArticleListViewModel: ObservableObject {
    
    let didChange = PassthroughSubject<ArticleListViewModel,Never>()
    
    init() {
        fetchTopHeadlines()
    }
    
    var articles = [ArticleViewModel]() {
        didSet {
            didChange.send(self)
        }
    }
    
    private func fetchTopHeadlines() {
        
        guard let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=6a82e1fdb4014b6f8ae30519be253030") else {
            fatalError("URL is not correct!")
        }
        
        Webservice().loadTopHeadlines(url: url) { articles in
            
            if let articles = articles {
                self.articles = articles.map(ArticleViewModel.init)
            }
            
        }
        
    }
    
}
