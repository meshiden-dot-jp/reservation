//
//  ContentView.swift
//  reservation
//
//  Created by 飯田優斗 on 2025/06/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            home()
                .tabItem {
                    Label("ホーム", systemImage: "house")
                }
            history()
                .tabItem {
                    Label("貸出履歴", systemImage: "book")
                }
            search()
                .tabItem {
                    Label("さがす", systemImage: "magnifyingglass")
                }
            notification()
                .badge("2")
                .tabItem {
                    Label("通知", systemImage: "bell")
                }
            
            settings()
                .tabItem {
                    Label("設定", systemImage: "line.3.horizontal")
                }
        }
        
    }
}

#Preview {
    ContentView()
}
