//
//  localize+String+Extension.swift
//  InsRep
//
//  Created by Oğuzhan Kabul on 14.11.2022.
//

import Foundation

public extension String {
    func localized() -> String {
        return NSLocalizedString(self,
                                 tableName: "Localizable",
                                 bundle: .main,
                                 value: self,
                                 comment: self)
    }
}

public extension String {
    
    static let following = "following"
    static let followers = "followers"
    
}
