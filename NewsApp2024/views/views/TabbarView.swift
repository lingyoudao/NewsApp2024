//
//  TabbarView.swift
//  NewsApp2024
//
//  Created by 凌有道 on 2024/10/2.
//

import SwiftUI

struct TabbarItem: Identifiable{
    var id = UUID()
    var index: Int
    var text: String
}

struct TabbarView:View{
    
    var items: [TabbarItem] = [TabbarItem(index: 0, text: "11111"), TabbarItem(index: 1, text: "22222"),TabbarItem(index: 2, text: "33333")]
    
    private let indicatorHeight:CGFloat = 2
    
    private var itemWidth:CGFloat{
        UIScreen.main.bounds.width / CGFloat(items.count)
    }
    
    @State private var selectedIndex = 0
    
    var body: some View{
        VStack(alignment: .leading, spacing: 0) {
            HStack(spacing: 0){
                ForEach(items){item in
                    Text(item.text)
                        .frame(width: itemWidth)
                        .background(Color.yellow)
                        .onTapGesture {
                            selectedIndex = item.index
                        }
                }
            }
            .background(Color.blue)
            
            Divider()
                .frame(width: itemWidth, height: indicatorHeight)
                .background(Color.pink)
                .offset(x: CGFloat(selectedIndex) * itemWidth)
                .animation(.easeInOut(duration: 0.2))
        }
    }
}
