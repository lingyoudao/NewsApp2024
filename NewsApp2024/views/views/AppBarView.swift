//
//  AppBarView.swift
//  NewsApp2024
//
//  Created by 凌有道 on 2024/10/2.
//

import SwiftUI

struct AppBarView<Content:View>: View{
    
    let safeAreaInsets = UIApplication.shared.windows.first?.safeAreaInsets
    private let padding:CGFloat = 8.0
    
    private let content: Content
    
    private var appBarHeight:CGFloat{
        //appBar高度+ 刘海高度 + 上下 padding
        45 + (safeAreaInsets?.top ?? 0) + padding * 2
    }
    init(@ViewBuilder content:()-> Content){
        self.content = content()
    }
    var body: some View{
        HStack(){
            content
        }
    .foregroundColor(.white)
    .padding(.bottom, padding)
    .padding(.horizontal, 4.0)
//    .frame(height: appBarHeight)
    .background(LinearGradient(gradient: Gradient(colors: [Color(red: 20/255.0, green: 158/255.0, blue: 231/255.0), Color(red: 45/255.0, green: 205/255.0, blue: 245/255.0)]), startPoint: .leading, endPoint: .trailing))
       
    }
}
