//
//  StudyPage.swift
//  NewsApp2024
//
//  Created by 凌有道 on 2024/10/2.
//

import SwiftUI

struct StudyPage: View{
    
    @State var tabIndex:Int = 0
   
    var body: some View{
        VStack(alignment: .center) {
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
            
            TabbarView(items: ["最新上映","历年经典"], isScrollable: true, showIndicator: false)
                .frame(height: 55)
                .onChange(of: tabIndex) { newValue in
                    print(newValue)
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
