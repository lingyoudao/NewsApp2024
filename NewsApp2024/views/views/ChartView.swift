//
//  ChartView.swift
//  NewsApp2024
//
//  Created by 凌有道 on 2024/10/3.
//

import SwiftUI

struct ChartView:View{
    
    var lineHeight: CGFloat = 24
    var circleRadius: CGFloat = 2.5
    var lineCount:CGFloat = 5
    
    //每个积分对应的高度
    let perY: CGFloat = 8
    
    var userPoints:[CGFloat] = [0,2,6,9.5,10,15, 5]
    
    var body: some View{
        GeometryReader{
            proxy in
            ZStack{
                ChartBackgroundView(proxy: proxy, lineHeight: lineHeight, circleRadius: circleRadius)
                
                Path{ path in
                    
                    //平均宽度
                    let averageOfWidth:CGFloat = proxy.size.width / 7
                    
                    //将坐标挪到第一天0积分的位置
                    path.move(to: CGPoint(x: averageOfWidth / 2, y: lineHeight * lineCount + circleRadius))
                    
                    for index in 0..<userPoints.count{
                        //x: 格的宽度(平均宽度)*第几格 + 每一格的一半 +圆圈的半径
                        //y:最大高度 - 积分 * 每个积分的高度
                        let point = CGPoint(x: averageOfWidth * CGFloat(index) + averageOfWidth / 2 - circleRadius, y: lineHeight * lineCount - CGFloat(userPoints[index])*perY - circleRadius)
                        
                        path.addRoundedRect(in: CGRect(origin: point, size: CGSize(width: circleRadius*2, height: circleRadius*2)), cornerSize: CGSize(width: circleRadius, height: circleRadius))
                        
                        //将坐标点移到圆圈的中心
                        path.move(to: CGPoint(x:point.x+circleRadius, y: point.y + circleRadius))
                        if index < userPoints.count - 1{
                            let nextPoint = CGPoint(x: averageOfWidth * CGFloat(index+1) + averageOfWidth / 2 - circleRadius, y: lineHeight * lineCount - CGFloat(userPoints[index+1])*perY - circleRadius)
                            
                            path.addLine(to: nextPoint)
                        }
                      
                    }
                }
                .stroke(style: StrokeStyle(lineWidth:1, lineCap: .round))
                .fill(Color(.sRGB, red: 20/255, green: 158/255, blue: 231/255, opacity: 1))
            }
        }
        .frame(height:120)
    }
}

struct ChartBackgroundView: View{
    
    var proxy: GeometryProxy
    
    //每一行的高度24
    var lineHeight: CGFloat
    
    var circleRadius: CGFloat
    
    var body: some View{
            
            Path{ path in
                path.move(to: CGPoint(x:0, y:circleRadius))
                
                //画背景线
                for index in 0...5{
                    path.move(to: CGPoint(x:0, y:lineHeight * CGFloat(index)))
                    path.addLine(to: CGPoint(x:proxy.size.width, y: lineHeight * CGFloat(index)))
                }
            }
            .stroke(style: StrokeStyle(lineWidth: 0.2, lineCap: .round))
            .fill(Color(.sRGB, red: 151/255, green: 151/255, blue: 151/255))
       
        
    }
}
