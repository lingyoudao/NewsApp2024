//
//  VideoListView.swift
//  NewsApp2024
//
//  Created by 凌有道 on 2024/10/3.
//

import SwiftUI

struct VideoListView: View{
    
    var videos: [VideoModel]
    
    var body: some View{
        ForEach(videos) { item in
            HStack{
                AsyncImage(item.imgUrl){
                    Text("loading")
                }
                .clipShape(RoundedRectangle(cornerRadius: 5.0))
                .frame(width:100, height: 56.25)
                
                
                VStack(alignment:.leading){
                    Text(item.title)
                        .font(Font.system(size: 16))
                        .foregroundColor(Color(.sRGB, red: 51/255, green: 51/255, blue: 51/255, opacity: 1))
                    Spacer()
                    
                    HStack{
                        Text(Image(systemName: "video.circle"))+Text("视频课程")
                        Spacer()
                        Text(item.duration)
                    }
                    .font(Font.system(size: 10))
                    .foregroundColor(Color(.sRGB, red: 153/255, green: 153/255, blue: 153/255, opacity: 1))
                }
               
            }
            .padding(.top)
        .padding(.horizontal)
        }
    }
}
