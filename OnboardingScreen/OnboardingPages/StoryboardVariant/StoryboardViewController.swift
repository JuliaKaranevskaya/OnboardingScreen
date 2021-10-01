//
//  StoryboardViewController.swift
//  OnboardingScreen
//
//  Created by Юлия Караневская on 30.09.21.
//

import UIKit

class StoryboardViewController: UIViewController {

    @IBOutlet var orangeImage: UIImageView!
    @IBOutlet var whiteImage: UIImageView!
    @IBOutlet var largeLabel: UILabel!
    @IBOutlet var smallLabel: UILabel!
    @IBOutlet var pageControl: UIPageControl!
    
    init(imageName: String) {
        orangeImage.image = UIImage(named: imageName)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    
}
