//
//  VideoModel.swift
//  NewsApp2024
//
//  Created by 凌有道 on 2024/10/3.
//

import Foundation

struct VideoModel: Decodable, Identifiable{
    var id: String
    var title: String
    var duration: String
    var imgUrl: String
}
