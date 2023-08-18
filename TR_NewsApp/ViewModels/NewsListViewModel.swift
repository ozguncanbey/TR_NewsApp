//
//  NewsListViewModel.swift
//  TR_NewsApp
//
//  Created by Özgün Can Beydili on 18.08.2023.
//

import Foundation

final class NewsListViewModel: ObservableObject {
    @Published var news: [NewsArticles] = []
    private let service = NewsService()
    
    init() { getNews() }
    
    func getNews() {
        service.downloadNews { [weak self] returnedNews in
            guard let self = self else { return }
            guard let returnedNews = returnedNews else { return }
            
            DispatchQueue.main.async {
                self.news = returnedNews
            }
        }
    }
    
    func refreshNews() async {
        service.downloadNews { [weak self] returnedNews in
            guard let self = self else { return }
            guard let returnedNews = returnedNews else { return }

            DispatchQueue.main.async {
                self.news = returnedNews
            }
        }
    }
}
