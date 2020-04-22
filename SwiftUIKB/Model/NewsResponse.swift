//
//  NewsResponse.swift
//  SwiftUIKB
//
//  Created by Ashish Kumar on 21/04/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import Foundation

struct NewsResponse: Codable {
    let articles: [Article]
}

struct Article: Codable {
    let title: String
    let description: String?
}
