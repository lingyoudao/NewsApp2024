//
//  TaskPage.swift
//  NewsApp2024
//
//  Created by 凌有道 on 2024/10/2.
//

import SwiftUI

struct TaskPage: View{
    var body: some View{
        ZStack(alignment: .top) {
            LinearGradient(gradient: Gradient(colors: [Color(.sRGB, red: 20/255, green: 158/255, blue: 231/255, opacity: 1), Color(.sRGB, red: 255/255, green: 255/255, blue: 255/255, opacity: 1)]), startPoint: .top   , endPoint: .bottom)
            
            OverView()
        }
    }
}

struct TaskPagePreviewer: PreviewProvider{
    static var previews: some View{
        TaskPage().ignoresSafeArea()
    }
}
