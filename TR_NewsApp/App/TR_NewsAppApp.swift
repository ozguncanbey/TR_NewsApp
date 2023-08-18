//
//  TR_NewsAppApp.swift
//  TR_NewsApp
//
//  Created by Özgün Can Beydili on 18.08.2023.
//

import SwiftUI

@main
struct TR_NewsAppApp: App {
    var body: some Scene {
        WindowGroup {
            NewsListView()
                .environmentObject(NewsListViewModel())
        }
    }
}
