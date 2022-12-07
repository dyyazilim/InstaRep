//
//  UIView+Extension.swift
//  InsRep
//
//  Created by Oğuzhan Kabul on 9.11.2022.
//

import UIKit

public extension UIView {
    func addSubviews(_ subviews: [UIView]) {
        subviews.forEach { addSubview($0) }
    }
}

