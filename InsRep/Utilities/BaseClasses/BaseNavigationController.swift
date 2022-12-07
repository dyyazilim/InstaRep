//
//  BaseNavigationController.swift
//  InsRep
//
//  Created by Oğuzhan Kabul on 12.07.2022.
//

import UIKit

class BaseNavigationController: UINavigationController {
    
    override func viewWillAppear(_ animated: Bool) {
        navigationBar.isHidden = true
    }
    
    deinit {
        debugPrint("deinit: \(self)")
    }
}

