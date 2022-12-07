//
//  DashboardHeaderViewModel.swift
//  InsRep
//
//  Created by Oğuzhan Kabul on 13.11.2022.
//

import Foundation
import UIKit

public protocol PostsViewDataSource {
    var phostItemCellModelList: [PostItemCellModel] { get }
}

public protocol PostsViewEventSource { }

public protocol PostsViewProtocol: PostsViewDataSource, PostsViewEventSource { }

public final class PostsViewModel: PostsViewProtocol {
    
    public var phostItemCellModelList: [PostItemCellModel]
    
    public init(phostItemCellModelList: [PostItemCellModel]) {
        self.phostItemCellModelList = phostItemCellModelList
    }
    
    public func getPostItemCellModel(_ indexPath: IndexPath) -> PostItemCellModel {
        return phostItemCellModelList[indexPath.row]
    }
}

