//
//  StoryboardPageViewController.swift
//  OnboardingScreen
//
//  Created by Юлия Караневская on 1.10.21.
//

import UIKit

class StoryboardPageViewController: UIPageViewController, UIScrollViewDelegate {
    
    let firstVC = StoryboardViewController(imageName: "orangeImage")
    let secondVC = StoryboardViewController(imageName: "secondOrangeImage")
    let thirdVC = StoryboardViewController(imageName: "thirdOrangeImage")
    
    var orderedViewControllers = [StoryboardViewController]()

    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        
        orderedViewControllers.append(firstVC)
        orderedViewControllers.append(secondVC)
        orderedViewControllers.append(thirdVC)
        
        if let firstViewController = orderedViewControllers.first {
            setViewControllers([firstViewController],
                               direction: .forward,
                animated: true,
                completion: nil)
        }

    }

}

extension StoryboardPageViewController: UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let indexVC = orderedViewControllers.firstIndex(of: viewController as! StoryboardViewController), indexVC > 0 else {
            return nil
        }
        let before = indexVC - 1
        
        return orderedViewControllers[before]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let indexVC = orderedViewControllers.firstIndex(of: viewController as! StoryboardViewController), indexVC < (orderedViewControllers.count - 1) else {
            return nil
        }
        let after = indexVC + 1
        
        return orderedViewControllers[after]
    }
    

}

