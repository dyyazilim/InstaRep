//
//  BaseView.swift
//  InsRep
//
//  Created by Oğuzhan Kabul on 13.11.2022.
//

import UIKit

open class BaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupViews()
    }

    func setupViews() {
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setupLayout() {}
}

