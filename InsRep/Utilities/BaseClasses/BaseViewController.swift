//
//  BaseViewController.swift
//  InsRep
//
//  Created by Oğuzhan Kabul on 9.11.2022.
//

import UIKit

class BaseViewController<V: BaseViewModelProtocol>: UIViewController {
        
    var mainTabBarController: TabBarController? {
        return tabBarController as? TabBarController
    }
    
    var viewModel: V
    
    init(viewModel: V) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    // swiftlint:disable fatal_error unavailable_function
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // swiftlint:enable fatal_error unavailable_function
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        setupViews()
        setupLayouts()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func animate() {
        UIView.animate(withDuration: 0.2) {
            self.view.layoutIfNeeded()
        }
    }
    
    deinit {
        debugPrint("deinit: \(self)")
    }
    
    // MARK: - SetupViews
    func setupViews() {}
    
    // MARK: - SetupLayouts
    func setupLayouts() {}
}

