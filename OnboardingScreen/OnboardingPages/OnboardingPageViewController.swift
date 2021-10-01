//
//  OnboardingPageViewController.swift
//  OnboardingScreen
//
//  Created by Юлия Караневская on 30.09.21.
//

import UIKit

class OnboardingPageViewController: UIPageViewController, UIScrollViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        
        if let firstViewController = orderedViewControllers.first {
            setViewControllers([firstViewController],
                               direction: .forward,
                animated: true,
                completion: nil)
        }

    }
    
    lazy var orderedViewControllers: [UIViewController] = {
        return [self.nextVC(number: "first"),
                self.nextVC(number: "second"),
                self.nextVC(number: "third")]
    }()

    private func nextVC(number: String) -> UIViewController {
        return UIStoryboard(name: "Main", bundle: nil) .
            instantiateViewController(withIdentifier: "\(number)VC")
    }

}

extension OnboardingPageViewController: UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let indexVC = orderedViewControllers.firstIndex(of: viewController), indexVC > 0 else {
            return nil
        }
        let before = indexVC - 1
        
        return orderedViewControllers[before]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let indexVC = orderedViewControllers.firstIndex(of: viewController), indexVC < (orderedViewControllers.count - 1) else {
            return nil
        }
        let after = indexVC + 1
        let nextVC = orderedViewControllers[after] as! SecondViewController
        nextVC.pageControl.currentPage = 2
        return nextVC
    }
    

}
