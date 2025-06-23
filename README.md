# Reservation App

## 概要

このプロジェクトは、Swift（UIKitまたはSwiftUI）で構築されたiOS向けの**予約管理アプリケーション**です。ユーザーはアプリを通じてスムーズに予約を作成・確認・管理できます。

## 機能一覧

- ユーザーによる予約作成・キャンセル
- 予約一覧の表示
- 日時や内容による予約のフィルタリング
- ユーザーインターフェースのプレビュー機能（Preview Content）

## ディレクトリ構成

```
RESERVATION/
├─ reservation/ # メインアプリケーションコード
│ ├─ Assets.xcassets/ # アセット（アイコン、色など）
│ └─ Preview Content/ # SwiftUIプレビュー用アセット
├─ reservation.xcodeproj/ # プロジェクト設定（Xcode）
├─ AIM Commons.xcodeproj/ # 共有プロジェクト設定（任意の追加モジュール？）
├─ reservationTests/ # 単体テストコード
└─ reservationUITests/ # UIテストコード
```


## 開発環境

- macOS Sonoma 以降（推奨）
- Xcode 15.0 以降
- Swift 5.9 以降
- iOS 16.0 以降対応

## セットアップ方法

1. このリポジトリをクローン：
   ```
   bash
   git clone https://github.com/yourname/reservation.git
   cd reservation
   ```
2. Xcode で reservation.xcodeproj を開く

3. 対応するシミュレータまたは実機でビルド＆実行（Cmd + R）

## テストの実行

- 単体テスト：
    - reservationTests を選択して Cmd + U
- UIテスト：
    - reservationUITests を選択して Cmd + U

## ライセンス
このプロジェクトは教育目的または個人利用目的で公開されています。商用利用や再配布については著作権者の許可を得てください。