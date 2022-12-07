//
//  PostCellModel.swift
//  InsRep
//
//  Created by Oğuzhan Kabul on 15.11.2022.
//

import UIKit

public protocol PostItemCellDataSource {
    var photo: UIImage { get }
}

public protocol PostItemCellEventSource { }

public protocol PostItemCellProtocol: PostItemCellDataSource, PostItemCellEventSource { }

public final class PostItemCellModel: PostItemCellProtocol {
    
    public var photo: UIImage
    
    public init(photo: UIImage) {
        self.photo = photo
    }
}
