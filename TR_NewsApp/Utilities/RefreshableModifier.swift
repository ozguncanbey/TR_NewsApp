//
//  RefreshableModifier.swift
//  TR_NewsApp
//
//  Created by Özgün Can Beydili on 18.08.2023.
//

import SwiftUI

struct RefreshableModifier: ViewModifier {
    @Binding var refreshing: Bool
    var action: () -> Void
    
    func body(content: Content) -> some View {
        ScrollView { content }
        .refreshable {
            Task {
                refreshing = true
                action()
                refreshing = false
            }
        }
    }
}
