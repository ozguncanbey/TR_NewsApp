//
//  News.swift
//  TR_NewsApp
//
//  Created by Özgün Can Beydili on 18.08.2023.
//

import Foundation

struct News: Decodable {
    let articles: [NewsArticles]?
}

struct NewsArticles: Decodable {
    let author: String?
    let title: String?
    let url: String?
    
    var _title: String {
        title ?? "No Title"
    }
    
    var _author: String {
        author ?? "No Author"
    }
}
