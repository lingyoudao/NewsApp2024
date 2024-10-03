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
                        }
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
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
