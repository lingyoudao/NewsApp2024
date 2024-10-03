//
//  ContentView.swift
//  NewsApp2024
//
//  Created by lyd on 2024/10/2.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            StudyPage()
                .tabItem {
                    Image("study_icon")
                    Text("学习")
                }
            TaskPage()
                .tabItem {
                    Image("task_icon")
                    Text("任务")
                }.ignoresSafeArea(edges:.top)
            ProfilePage()
                .tabItem {
                    Image("mine_icon")
                    Text("我的")
                }.ignoresSafeArea(edges: .top)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
