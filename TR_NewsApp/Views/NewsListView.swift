//
//  ContentView.swift
//  TR_NewsApp
//
//  Created by Özgün Can Beydili on 18.08.2023.
//

import SwiftUI

struct NewsListView: View {
    @EnvironmentObject var viewModel: NewsListViewModel
//    @State private var isRefreshing = false
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(viewModel.news.indices,id: \.self) { index in
                        NewsRow(newsArticle: viewModel.news[index])
                    }
                }
                .listStyle(.grouped)
                .refreshable {
                    await viewModel.refreshNews()
                }
//                .modifier(RefreshableModifier(refreshing: $isRefreshing, action: {
//                    viewModel.refreshNews()
//                }))
                .navigationTitle("News")
            }
            .padding()
        }
    }
}

struct NewsListView_Previews: PreviewProvider {
    static var previews: some View {
        NewsListView()
            .environmentObject(NewsListViewModel())
    }
}
