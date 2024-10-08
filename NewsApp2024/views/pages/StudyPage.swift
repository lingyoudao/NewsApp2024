//
//  StudyPage.swift
//  NewsApp2024
//
//  Created by 凌有道 on 2024/10/2.
//

import SwiftUI

struct StudyPage: View{
    
    @State var tabIndex:Int = 0
    @State var typeIndex: Int = 0 //类型
    @State var showNewsList: Bool = true
    @State var currentPage:Int = 0
   
    var body: some View{
        VStack(spacing: 0) {
            //标题栏
            AppBarView {
                Image("tool_bar_left_icon")
                    .resizable()
                    .frame(width: 69, height: 25)
                
                //搜素框
                HStack{
                    Image(systemName: "magnifyingglass")
                    Text("搜索感兴趣的内容")
                    Spacer()
                }
                .padding(.horizontal, 12.0)
                .padding(.vertical, 8.0)
                .background(Color.white.opacity(0.3))
                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                
                HStack{
                    Text("学习\n进度")
                    Text("100%")
                }
                .foregroundColor(.white)
                
                Image(systemName: "bell")
            }
            
            TabbarView(items: ["动作片","喜剧片","剧情片","冒险片","科幻片","爱情片","历史片","恐怖片"], isScrollable: true, selection: $tabIndex)
                .frame(height: 55)
                .background(Color.blue.opacity(0.1))
                .onChange(of: tabIndex) { newValue in
                    print(newValue)
                }
            
            ScrollView{
                LazyVStack(spacing:0){//只支持ios14.0+
                    TabbarView(items: ["最新上映","经典回顾"], showIndicator: false, selection: $typeIndex)
                        .frame(height: 55)
                        .onChange(of: typeIndex) { newValue in
                            showNewsList = newValue == 0
                        }
                    
                    SwiperView(items: [
                        Image("comedy-zww-successor").resizable(), Image("ciwei").resizable(), Image("deadpool_wolf").resizable(),Image("upstream").resizable()
                    ], currentPage: $currentPage).aspectRatio(4/3, contentMode: .fit)
                        .cornerRadius(12.0)
                        .padding(.horizontal)
                }
                
                if(showNewsList){
                    ArticleListView(articles: [Article(id: "0", title: "国庆75周年", mediaName: "新华社", publishTime: "2024-10-01", content: "庆祝国庆75周年"), Article(id: "1", title: "伊朗导弹攻击以色列", mediaName: "CNN", publishTime: "2024-10-02", content: "伊朗导弹攻击以色列")])
                }else{
                    VideoListView(videos: [
                        VideoModel(id: "0", title: "1111", duration: "2:0:0", imgUrl: "https://www.66tutup.com/2023/7271.jpg"),VideoModel(id: "1", title: "2222", duration: "1:0:0", imgUrl: "https://www.66tutup.com/2023/7271.jpg"),
                        VideoModel(id: "2", title: "3333", duration: "3:0:0", imgUrl: "https://www.66tutup.com/2023/7271.jpg")])
                }
            }
            
            
            
            Spacer()
        
        }
    }
}

struct StudyPagePreviewer:PreviewProvider{
    static var previews: some View{
        StudyPage()
    }
}
