//
//  ArticleListView.swift
//  NewsApp2024
//
//  Created by 凌有道 on 2024/10/3.
//

import SwiftUI

struct ArticleListView: View{
    
    var articles:[Article]
    
    var body: some View{
        ForEach(articles) { article in
            Text(article.title)
                .font(Font.system(size: 16))
                .foregroundColor(Color(.sRGB, red: 51/255, green: 51/255, blue: 51/255, opacity: 1))
            HStack{
                Text(article.mediaName)
                    .font(Font.system(size: 10))
                Spacer()
                Text(article.publishTime)
                    .font(Font.system(size: 10))
            }
        }
        .padding(.top)
        .padding(.horizontal)
    }
}
