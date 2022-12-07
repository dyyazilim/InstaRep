//
//  TabBarController.swift
//  InsRep
//
//  Created by Oğuzhan Kabul on 9.11.2022.
//

import UIKit
import Swiftagram
import SwiftagramCrypto

final class TabBarController: UITabBarController, UITabBarControllerDelegate {
    
    let viewModel = TabBarViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        viewControllers = viewModel.viewControllers
        delegate = self
        setupTabbarAppearance()
    }
    
    private func setupTabbarAppearance() {
        tabBar.tintColor = .gray
        tabBar.layer.shadowOffset = CGSize(width: 0, height: 0)
        tabBar.layer.shadowRadius = 1
        tabBar.layer.shadowColor = UIColor.black.cgColor
        tabBar.layer.shadowOpacity = 0.3
        tabBar.layer.cornerRadius = 30
        tabBar.layer.masksToBounds = true
        tabBar.selectionIndicatorImage = UIImage().createSelectionIndicator(color: UIColor.green, size: CGSize(width: tabBar.frame.width/CGFloat(tabBar.items!.count), height:  tabBar.frame.height), lineThickness: 2.0, side: .bottom)
        if #available(iOS 15.0, *) {
            let appearance = UITabBarAppearance()
            appearance.backgroundColor = .white
            self.tabBar.standardAppearance = appearance
            self.tabBar.scrollEdgeAppearance = tabBar.standardAppearance
        }
    }
        
    
}

