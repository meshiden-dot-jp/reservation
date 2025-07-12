//
//  settings.swift
//  reservation
//
//  Created by 飯田優斗 on 2025/06/11.
//

import SwiftUI

struct settings: View {
    @State var inputPhone = ""
    @State var inputGrade = ""
    @State private var showTerms = false
    @FocusState private var isFocused: Bool
    var body: some View {
        NavigationStack{
            VStack {
                List{
                    Section(header: Text("あなたの情報")){
                        HStack{
                            Text("名前")
                            Spacer()
                            Text("飯田優斗")
                                .foregroundColor(.secondary)
                        }
                        HStack{
                            Text("フリガナ")
                            Spacer()
                            Text("イイダユウト")
                                .foregroundColor(.secondary)
                        }
                        HStack{
                            Text("電話番号")
                            Spacer()
                            TextField("000-0000-0000",text: $inputPhone)
                                .multilineTextAlignment(.trailing)
                                .focused($isFocused)
                        }
                        .keyboardType(.phonePad)
                        .toolbar
                        {
                            ToolbarItemGroup(placement: .keyboard){
                                Spacer()
                                Button("完了"){
                                    isFocused = false
                                }
                            }
                        }
                        HStack{
                            Text("学年")
                            Spacer()
                            TextField("0",text: $inputGrade)
                                .multilineTextAlignment(.trailing)
                                .keyboardType(.numberPad)
                        }
                        HStack{
                            Text("所属")
                            Spacer()
                            Text("情報テクノロジー")
                                .foregroundColor(.secondary)
                        }
                    }
                    Section(header: Text("AIM Commons 機器予約アプリについて")){
                        NavigationLink {
                            about()
                        } label: {
                            Text("このアプリについて")
                        }
                        Button {
                            showTerms = true
                        } label: {
                            HStack {
                                Text("利用規約")
                                Spacer()
                                Image(systemName: "chevron.forward")
                                    .font(.system(size: 13, weight: .semibold))
                                    .foregroundColor(Color(UIColor.tertiaryLabel))
                            }
                            .contentShape(Rectangle())
                        }
                        .buttonStyle(.plain)
                        .sheet(isPresented: $showTerms) {
                            SafariView(url: URL(string: "https://meshiden.jp/disclaimer")!)
                        }
                        NavigationLink {
                            license()
                        } label: {
                            Text("ライセンス")
                        }
                        Button {
                            showTerms = true
                        } label: {
                            HStack {
                                Text("プライバシーポリシー")
                                Spacer()
                                Image(systemName: "chevron.forward")
                                    .font(.system(size: 13, weight: .semibold))
                                    .foregroundColor(Color(UIColor.tertiaryLabel))
                            }
                            .contentShape(Rectangle())
                        }
                        .buttonStyle(.plain)
                        .sheet(isPresented: $showTerms) {
                            SafariView(url: URL(string: "https://meshiden.jp/privacy")!)
                        }
                        HStack{
                            Text("バージョン")
                            Spacer()
                            Text("1.0.0")
                                .foregroundColor(.secondary)
                        }
                        .foregroundColor(.primary)
                    }
                    Section(header: Text("ログアウト")){
                        Button{
                            
                        }label: {
                            Text("ログアウト")
                        }
                        .foregroundColor(.red)
                    }
                    .navigationTitle("設定")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
