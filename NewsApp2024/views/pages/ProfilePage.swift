//
//  ProfilePage.swift
//  NewsApp2024
//
//  Created by 凌有道 on 2024/10/2.
//

import SwiftUI

struct ProfilePage: View{
    var body: some View{
        VStack() {
            
            AppBarView{
                Text("我的")
                    .frame(maxWidth: .infinity)
            }.padding(.top, 20)
            
            ScrollView{
                LazyVStack{
                    HStack{
                        Image(systemName: "person.crop.circle.fill")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .background(Color.white)
                            .clipShape(Circle())
                        
                        VStack{
                            Text("182***008")
                                .font(Font.system(size: 18))
                                .foregroundColor(Color(.sRGB, red: 51/255, green: 51/255, blue: 51/255, opacity: 1))
                            Spacer()
                            
                            Text("已坚持学习22天")
                                .font(Font.system(size: 11))
                                .foregroundColor(Color(.sRGB, red: 153/255, green: 153/255, blue: 153/255, opacity: 1))
                        }
                        .padding(.vertical)
                        
                        Spacer()
                    }
                    .padding()
                    ItemView(image: "my_point", title: "学习积分")
                    ItemView(image: "browse_record", title: "浏览记录")
                    ItemView(image: "learn_archives", title: "学习档案", showDivider: false)
                    
                    Color.gray.opacity(0.1)
                    
                    ItemView(image: "common_problem", title: "常见问题")
                    ItemView(image: "version_information", title: "版本信息")
                    ItemView(image: "setting", title: "个人设置")
                    ItemView(image: "online_service_icon", title: "联系我们")
                }
            }
            
            Spacer()
        }
    }
}

struct ProfilePagePreviewer: PreviewProvider{
    static var previews: some View{
        ProfilePage().ignoresSafeArea()
    }
}
