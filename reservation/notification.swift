//
//  notification.swift
//  reservation
//
//  Created by 飯田優斗 on 2025/06/12.
//

import SwiftUI

struct notification: View {
    @State private var isPushEnabled = true
    
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("通知設定")) {
                    Toggle(isOn: $isPushEnabled) {
                        Text("プッシュ通知を受け取る")
                    }
                }
                
                Section(header: Text("過去のお知らせ")) {
                    NavigationLink("6月の予約システムメンテナンスのお知らせ") {
                        NotificationDetailView(title: "6月のメンテナンス", content: "6月25日 午前3時〜4時にメンテナンスを行います。")
                    }
                    NavigationLink("予約方法の変更について") {
                        NotificationDetailView(title: "予約方法の変更", content: "2025年7月より、予約方法が一部変更されます。")
                    }
                }
            }
            .navigationTitle("通知")
        }
    }
}

struct NotificationDetailView: View {
    let title: String
    let content: String
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text(title)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(content)
                    .font(.body)
            }
            .padding()
        }
        .navigationTitle("お知らせ")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    notification()
}
