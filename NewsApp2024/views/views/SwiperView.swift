//
//  SwiperView.swift
//  NewsApp2024
//
//  Created by 凌有道 on 2024/10/2.
//

import SwiftUI

struct SwiperView<SwiperItem:View>:View{
    
    var items:[SwiperItem]
    @Binding var currentPage:Int
    
    private let timer = Timer.publish(every: 3, on: .current, in: .common).autoconnect()
    
    var body: some View{
        ZStack(alignment: .bottom) {
            Swiper(items: items, currentPage: $currentPage).onReceive(timer, perform: { _ in
                currentPage += 1
                if currentPage >= items.count{
                    currentPage = 0
                }
            })
            SwiperControl(numberOfPages: items.count, currentPage: $currentPage)
        }
    }
}
