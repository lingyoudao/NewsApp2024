//
//  OverView.swift
//  NewsApp2024
//
//  Created by 凌有道 on 2024/10/3.
//

import SwiftUI

struct OverView:View{
    
    let screen = UIScreen.main.bounds
    let safeAreaInsets = UIApplication.shared.windows.first?.safeAreaInsets
    let padding:CGFloat = 8.0
    
    var body: some View{
        VStack{
            Text("学习任务")
                .frame(height:45)
                .font(Font.system(size: 18))
            
            Text("学习周期:2024.10.1-2024.10.7")
                .font(Font.system(size: 12))
            
            Text("") //调整间距用空行
                .frame(height:45)
                .font(Font.system(size: 18))
            
            ZStack(alignment: .center) {
                Circle()
                    .trim(from: 0.4, to: 1.0)
                    .stroke(style: StrokeStyle(lineWidth: 10))
                    .rotation(.degrees(18.5))
                    .frame(width: screen.width / 2 - padding * 2, height: screen.width / 2 - padding * 2)
                .foregroundColor(Color.gray.opacity(0.3))
                
                Circle()
                    .trim(from: 0.4, to: 0.6)
                    .stroke(style: StrokeStyle(lineWidth: 10))
                    .rotation(.degrees(18.5))
                    .frame(width: screen.width / 2 - padding * 2, height: screen.width / 2 - padding * 2)
                
                VStack{
                    Text("10000分")
                        .font(Font.system(size: 36))
                    Text("学年积分")
                        .font(Font.system(size: 12))
                        
                }
            }.padding(.top, padding)
                .frame(height:100)
            
            HStack(){
                Spacer()
                
                VStack(){
                    Text("13500分")
                        .font(Font.system(size: 16))
                    Text("学年规定积分")
                        .font(Font.system(size: 12))
                }
                
                Spacer()
                
                VStack(){
                    Text("3500分")
                        .font(Font.system(size: 16))
                    Text("还差")
                        .font(Font.system(size: 12))
                }
                
                Spacer()
            }
           
        }
        .padding(.top, safeAreaInsets? .top ?? 0)
        .foregroundColor(.white)
    }
}
