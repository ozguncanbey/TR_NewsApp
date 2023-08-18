//
//  NewsRow.swift
//  TR_NewsApp
//
//  Created by Özgün Can Beydili on 18.08.2023.
//

import SwiftUI

struct NewsRow: View {
    let newsArticle: NewsArticles
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(newsArticle._title)
                .font(.headline)
                .padding(.bottom, 5)
//            Text(newsArticle._author)
//                .font(.subheadline)
            if let urlString = newsArticle.url, let url = URL(string: urlString) {
                Link("Read More", destination: url)
            }
        }
    }
}

struct NewsRow_Previews: PreviewProvider {
    static var previews: some View {
        NewsRow(newsArticle: NewsArticles(author: "Habertürk", title: "bla bla", url: ""))
    }
}
