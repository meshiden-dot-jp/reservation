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
                        NavigationLink {
                            terms()
                        } label: {
                            Text("利用規約")
                        }
                        NavigationLink {
                            license()
                        } label: {
                            Text("ライセンス")
                        }
                        NavigationLink {
                            privacy()
                        } label: {
                            Text("プライバシーポリシー")
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
