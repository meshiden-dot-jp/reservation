//
//  about.swift
//  reservation
//
//  Created by 飯田優斗 on 2025/06/11.
//

import SwiftUI

struct about: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    Text("このアプリについて")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Text("このアプリは、AIMプロジェクトの一環として開発された予約管理アプリです。学生や教職員がスムーズに施設や機材の予約を行えるように設計されています。")
                        .font(.body)
                    
                    Text("主な機能")
                        .font(.headline)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Label("予約の作成・確認・キャンセル", systemImage: "calendar.badge.plus")
                        Label("通知によるリマインド", systemImage: "bell")
                        Label("利用履歴の確認", systemImage: "clock.arrow.circlepath")
                    }
                    .font(.subheadline)
                }
                .padding()
            }
            .navigationTitle("このアプリについて")
        }
    }
}

#Preview {
    about()
}
