//
//  UIImage+Extension.swift
//  InsRep
//
//  Created by Oğuzhan Kabul on 9.11.2022.
//

import UIKit

extension UIImage {
    func createSelectionIndicator(color: UIColor, size: CGSize, lineThickness: CGFloat, side: Side) -> UIImage {
        var xPosition = 0.0
        var yPosition = 0.0
        var imgWidth = 2.0
        var imgHeight = 2.0
        switch side {
            case .top:
                xPosition = 0.0
                yPosition = 0.0
                imgWidth = size.width
                imgHeight = lineThickness
            case .bottom:
                xPosition = 0.0
                yPosition = size.height - lineThickness
                imgWidth = size.width
                imgHeight = lineThickness
            case .left:
                xPosition = 0.0
                yPosition = 0.0
                imgWidth = lineThickness
                imgHeight = size.height
            case .right:
                xPosition = size.width - lineThickness
                yPosition = 0.0
                imgWidth = lineThickness
                imgHeight = size.height
        }
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        color.setFill()
        UIRectFill(CGRect(x: xPosition, y: yPosition, width: imgWidth, height: imgHeight))
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
    
    enum Side: String {
        case top, left, right, bottom
    }
}
