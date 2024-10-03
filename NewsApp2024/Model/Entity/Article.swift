//
//  Article.swift
//  NewsApp2024
//
//  Created by 凌有道 on 2024/10/3.
//

import Foundation

struct Article: Decodable, Identifiable{
    var id:String
    var title:String
    var mediaName: String
    var publishTime: String
    var content: String
}
