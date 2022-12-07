//
//  BaseNavigationController.swift
//  InsRep
//
//  Created by Oğuzhan Kabul on 12.07.2022.
//

import UIKit

protocol BaseViewModelDataSource: AnyObject { }

protocol BaseViewModelEventSource: AnyObject { }

protocol BaseViewModelProtocol: BaseViewModelDataSource, BaseViewModelEventSource {
    
    func viewDidLoad()
}

class BaseViewModel: BaseViewModelProtocol {
    
    
    func viewDidLoad() {}
    
    
    deinit {
        debugPrint("deinit \(self)")
    }
    
    init() { }
}


