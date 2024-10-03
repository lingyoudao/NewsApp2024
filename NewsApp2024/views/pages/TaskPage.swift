//
//  TaskPage.swift
//  NewsApp2024
//
//  Created by 凌有道 on 2024/10/2.
//

import SwiftUI

struct TaskPage: View{
    
    @State var overViewSize:CGSize = .zero
    let padding: CGFloat = 8.0
    
    var body: some View{
        ZStack(alignment: .top) {
            LinearGradient(gradient: Gradient(colors: [Color(.sRGB, red: 20/255, green: 158/255, blue: 231/255, opacity: 1), Color(.sRGB, red: 255/255, green: 255/255, blue: 255/255, opacity: 1)]), startPoint: .top   , endPoint: .bottom)
            
            OverView()
                .measureSize { size in
                    overViewSize = size
                }
            
            VStack{
                ScrollView(.vertical,showsIndicators: false){
                    LazyVStack(spacing: 0){
                        
                        Color.clear.frame(height:overViewSize.height + padding * 2)
                        
                        HStack{
                            Text("学习明细")
                                .font(Font.system(size: 16))
                                .fontWeight(.bold)
                        }.padding(.top)
                            .padding(.horizontal)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(RoundedCorners(top: 15.0, background: Color.white))
                        
                        HStack{
                            Text("最近一周获得积分情况")
                                .font(Font.system(size: 14))
                                .foregroundColor(Color(.sRGB, red: 151/255, green: 151/255, blue: 151/255, opacity: 1))
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .background(Color.white)
                        
                        HStack{
                            ChartView()
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .background(Color.white)
                        
                        //日期
                        HStack(spacing: 0){
                            Text("02.05")
                                .frame(width: (UIScreen.main.bounds.width - 30)/7)
                            Text("02.06")
                                .frame(width: (UIScreen.main.bounds.width - 30)/7)
                            Text("02.07")
                                .frame(width: (UIScreen.main.bounds.width - 30)/7)
                            Text("02.08")
                                .frame(width: (UIScreen.main.bounds.width - 30)/7)
                            Text("02.09")
                                .frame(width: (UIScreen.main.bounds.width - 30)/7)
                            Text("今日")
                                .frame(width: (UIScreen.main.bounds.width - 30)/7)
                        }
                    }
                }
            }
        }
    }
}

struct TaskPagePreviewer: PreviewProvider{
    static var previews: some View{
        TaskPage().ignoresSafeArea()
    }
}
