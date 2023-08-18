//
//  NewsService.swift
//  TR_NewsApp
//
//  Created by Özgün Can Beydili on 18.08.2023.
//

import Foundation

final class NewsService {
    func downloadNews(completion: @escaping ([NewsArticles]?) -> ()) {
        guard let url = URL(string: API_URLs.NewsURL()) else { return }
        
        NetworkManager.shared.download(url: url) { [weak self] result in
            guard let self = self else { return }
            
            switch result {
            case .success(let data):
                completion(handleWithData(data))
            case .failure(let error):
                handleWithError(error)
            }
        }
    }
    
    private func handleWithError(_ error: Error) {
        print(error.localizedDescription)
    }
    
    private func handleWithData(_ data: Data) -> [NewsArticles]? {
        do {
            let news = try JSONDecoder().decode(News.self, from: data)
            return news.articles
        } catch {
            print(error.localizedDescription)
            return nil
        }
    }
}
