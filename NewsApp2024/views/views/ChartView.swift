//
//  ChartView.swift
//  NewsApp2024
//
//  Created by 凌有道 on 2024/10/3.
//

import SwiftUI

struct ChartView:View{
    var body: some View{
        ZStack{
            ChartBackgroundView()
        }.frame(height:120)
    }
}

struct ChartBackgroundView: View{
    //每一行的高度24
    var lineHeight: CGFloat = 24
    
    var circleRadius: CGFloat = 2.5
    
    var body: some View{
        GeometryReader{
            proxy in
            
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
}
