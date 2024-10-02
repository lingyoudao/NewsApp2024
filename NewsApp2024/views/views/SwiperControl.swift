//
//  SwiperControl.swift
//  NewsApp2024
//
//  Created by 凌有道 on 2024/10/2.
//

import SwiftUI

struct SwiperControl: UIViewRepresentable{
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    
    var numberOfPages:Int
    @Binding var currentPage:Int
    
    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.numberOfPages = numberOfPages
        control.addTarget(context.coordinator, action: #selector(context.coordinator.onChanged(sender:)), for: .valueChanged)
        return control
    }
    
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
    }
    
    typealias UIViewType = UIPageControl
    
    class Coordinator: NSObject{
        var parent: SwiperControl
        
        init(_ parent: SwiperControl){
            self.parent = parent
        }
        
        @objc func onChanged(sender: UIPageControl){
            parent.currentPage = sender.currentPage
        }
    }
}
