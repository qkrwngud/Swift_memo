//
//  SwiftMemoApp.swift
//  SwiftMemo
//
//  Created by 박주형 on 2023/01/29.
//

import SwiftUI

@main
struct SwiftMemoApp: App {
    
    @StateObject var store = MemoStore()
    
    var body: some Scene {
        WindowGroup {
            MainListView()
                .environmentObject(store)
        }
    }
}
