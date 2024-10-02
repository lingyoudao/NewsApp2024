//
//  StudyPage.swift
//  NewsApp2024
//
//  Created by 凌有道 on 2024/10/2.
//

import SwiftUI

struct StudyPage: View{
    private let padding:CGFloat = 8.0
    var body: some View{
        VStack(alignment: .leading) {
            //标题栏
            HStack(){
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
        .foregroundColor(.white)
        .padding(.bottom, padding)
        .padding(.horizontal, 4.0)
        .background(LinearGradient(gradient: Gradient(colors: [Color(red: 20/255.0, green: 158/255.0, blue: 231/255.0), Color(red: 45/255.0, green: 205/255.0, blue: 245/255.0)]), startPoint: .leading, endPoint: .trailing))
            Spacer()
        }
    }
}

struct StudyPagePreviewer:PreviewProvider{
    static var previews: some View{
        StudyPage()
    }
}
