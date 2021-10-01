//
//  SecondViewController.swift
//  OnboardingScreen
//
//  Created by Юлия Караневская on 30.09.21.
//

import UIKit

class SecondViewController: UIPageViewController {

    let orangeImageView: UIImageView = {
        let imageV = UIImageView()
        imageV.image = UIImage(named: "secondOrangeImage")
        imageV.contentMode = .scaleAspectFill
        return imageV
    }()
    
    let whiteImageView: UIImageView = {
        let imageV = UIImageView()
        imageV.image = UIImage(named: "whiteImage")
        imageV.contentMode = .scaleToFill
        return imageV
    }()
    
    let largeTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Покупай билеты легко!"
        label.textAlignment = .center
        label.font = label.font.withSize(25)
        label.numberOfLines = 0
        return label
    }()
    
    let smallTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Выбирайте дату, тип и количество билетов и оплачивайте одной кнопкой"
        label.textAlignment = .center
        label.font = label.font.withSize(15)
        label.numberOfLines = 0
        return label
    }()
    
    let pageControl: UIPageControl = {
        let pageC = UIPageControl()
        pageC.numberOfPages = 3
        pageC.currentPageIndicatorTintColor = UIColor(named: "customOrange")
        pageC.pageIndicatorTintColor = .systemGray
        return pageC
    }()
    
    let orangeButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "customOrange")
        button.layer.cornerRadius = 15
        button.setTitle("Далее", for: .normal)
        return button
    }()
    
    let whiteButton: UIButton = {
        let button = UIButton()
        button.setTitle("Пропустить", for: .normal)
        button.setTitleColor(UIColor(named: "customOrange"), for: .normal)
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 15
        button.layer.borderColor = UIColor(named: "customOrange")?.cgColor
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(whiteImageView)
        view.addSubview(orangeImageView)
        view.addSubview(largeTextLabel)
        view.addSubview(smallTextLabel)
        view.addSubview(orangeButton)
        view.addSubview(whiteButton)
        view.addSubview(pageControl)
        setPage()

     
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
          return .lightContent
    }

  
    private func setPage() {
        pinOrangeImageView()
        pinWhiteImageView()
        pinLargeTextLabel()
        pinSmallTextLabel()
        pinWhiteButton()
        pinOrangeButton()
        pinPageControl()
    }
    
    private func pinOrangeImageView() {
        orangeImageView.translatesAutoresizingMaskIntoConstraints = false
        orangeImageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        orangeImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        orangeImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        orangeImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        
    }
    
    private func pinWhiteImageView() {
        whiteImageView.translatesAutoresizingMaskIntoConstraints = false
        whiteImageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        whiteImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        whiteImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        whiteImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        

    }
    
    private func pinLargeTextLabel() {
        largeTextLabel.translatesAutoresizingMaskIntoConstraints = false
        largeTextLabel.topAnchor.constraint(equalTo: whiteImageView.topAnchor, constant: 32).isActive = true
        largeTextLabel.leadingAnchor.constraint(equalTo: whiteImageView.leadingAnchor, constant: 16).isActive = true
        largeTextLabel.trailingAnchor.constraint(equalTo: whiteImageView.trailingAnchor, constant: -16).isActive = true
        largeTextLabel.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
    }
    
    private func pinSmallTextLabel() {
        smallTextLabel.translatesAutoresizingMaskIntoConstraints = false
        smallTextLabel.topAnchor.constraint(equalTo: largeTextLabel.bottomAnchor, constant: 12).isActive = true
        smallTextLabel.leadingAnchor.constraint(equalTo: whiteImageView.leadingAnchor, constant: 16).isActive = true
        smallTextLabel.trailingAnchor.constraint(equalTo: whiteImageView.trailingAnchor, constant: -16).isActive = true
        smallTextLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
    }
    
    private func pinWhiteButton() {
        whiteButton.translatesAutoresizingMaskIntoConstraints = false
        whiteButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -46).isActive = true
        whiteButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        whiteButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        whiteButton.heightAnchor.constraint(equalToConstant: 46).isActive = true
    }
    
    private func pinOrangeButton() {
        orangeButton.translatesAutoresizingMaskIntoConstraints = false
        orangeButton.bottomAnchor.constraint(equalTo: whiteButton.topAnchor, constant: -12).isActive = true
        orangeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        orangeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        orangeButton.heightAnchor.constraint(equalToConstant: 46).isActive = true
    }
    
    private func pinPageControl() {
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        pageControl.topAnchor.constraint(lessThanOrEqualTo: smallTextLabel.bottomAnchor, constant: 88).isActive = true
        pageControl.bottomAnchor.constraint(equalTo: orangeButton.topAnchor, constant: -12).isActive = true
        pageControl.centerXAnchor.constraint(equalTo: whiteImageView.centerXAnchor).isActive = true
    }
    

}
