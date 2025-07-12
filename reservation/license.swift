//
//  license.swift
//  reservation
//
//  Created by 飯田優斗 on 2025/06/11.
//

import SwiftUI

struct license: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    
                    Text("このアプリでは以下のオープンソースライブラリを使用しています。")
                    
                    Group {
                        Text("• SwiftUI")
                            .font(.headline)
                        Text("Copyright © Apple Inc.\nライセンス: Apple Developer Program License Agreement")
                        
                        Text("• Alamofire")
                            .font(.headline)
                        Text("""
Copyright (c) 2014-2025 Alamofire Software Foundation (ASF)

MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy
...
""")
                    }
                    .font(.subheadline)
                }
                .padding()
            }
            .navigationTitle("ライセンス").toolbarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    license()
}
