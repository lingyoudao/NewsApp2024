//
//  Swiper.swift
//  NewsApp2024
//
//  Created by 凌有道 on 2024/10/2.
//

import SwiftUI

struct Swiper<SwiperItem:View>:UIViewControllerRepresentable{
    
    @Binding private var currentPage: Int
    private var items:[SwiperItem]
    
    init(items:[SwiperItem], currentPage:Binding<Int>){
        self.items = items
        self._currentPage = currentPage
    }
    
    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
        pageViewController.dataSource = context.coordinator
        pageViewController.delegate = context.coordinator
        return pageViewController
    }
    
    func updateUIViewController(_ uiViewController: UIPageViewController, context: Context) {
        uiViewController.setViewControllers([context.coordinator.controllers[currentPage]], direction: .forward, animated: true, completion: nil)
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    typealias UIViewControllerType = UIPageViewController
    
    class Coordinator: NSObject, UIPageViewControllerDataSource, UIPageViewControllerDelegate{
        
        
        private var parent: Swiper
        var controllers = [UIViewController]()
        init(_ parent: Swiper){
            self.parent = parent
            controllers = parent.items.map({ UIHostingController(rootView: $0)})
        }
        
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {//向左滑
            guard let index = controllers.firstIndex(of: viewController) else{
                return nil
            }
            
            if index == 0 {
                return controllers.last
            }
            
            return controllers[index - 1]
        }
        
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? { //向右滑动
            guard let index = controllers.firstIndex(of: viewController) else{
                return nil
            }
            
            if index == controllers.count - 1 {
                return controllers.first
            }
            
            return controllers[index + 1]
        }
        
        func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
            if completed, let visiableController = pageViewController.viewControllers?.first, let index = controllers.firstIndex(of: visiableController){
                parent.currentPage = index
            }
        }
    }
}
