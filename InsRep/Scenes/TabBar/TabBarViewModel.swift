//
//  TabBarViewModel.swift
//  InsRep
//
//  Created by Oğuzhan Kabul on 9.11.2022.
//

import UIKit
import SwiftyUserDefaults

protocol TabBarDataSource {
    var viewControllers: [UIViewController] { get }
}

protocol TabBarEventSource: TabBarDataSource { }

protocol TabBarViewProtocol: TabBarEventSource { }

final class TabBarViewModel: BaseViewModel, TabBarViewProtocol {
    
    var viewControllers: [UIViewController] {
        let dashboardViewModel = DashboardViewModel()
        let dashboardViewController = DashboardViewController(viewModel: dashboardViewModel)
        dashboardViewController.tabBarItem = UITabBarItem(title: "Dashboard",
                                                          image: UIImage(systemName: "person"),
                                                          selectedImage: UIImage(systemName: "person.fill"))
        let dashboardNavigationController = BaseNavigationController(rootViewController: dashboardViewController)
        
        let settingsViewModel = SettingsViewModel()
        let settingsViewController = SettingsViewController(viewModel: settingsViewModel)
        settingsViewController.tabBarItem = UITabBarItem(title: "Settings",
                                                         image: UIImage(systemName: "gear.circle"),
                                                         selectedImage: UIImage(systemName: "gear.circle.fill"))
        let settingsNavigationController = BaseNavigationController(rootViewController: settingsViewController)
        
        return [dashboardNavigationController,
                settingsNavigationController]
    }
}

