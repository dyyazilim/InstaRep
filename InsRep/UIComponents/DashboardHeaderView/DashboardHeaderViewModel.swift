//
//  DashboardHeaderViewModel.swift
//  InsRep
//
//  Created by Oğuzhan Kabul on 13.11.2022.
//

import Foundation
import UIKit

public protocol DashboardHeaderViewDataSource {
    var userName: String { get }
    var profilePicture: UIImage { get }
    var followersCount: String { get }
    var followingCount: String { get }
    var postCount: String { get } 
}

public protocol DashboardHeaderViewEventSource { }

public protocol DashboardHeaderViewProtocol: DashboardHeaderViewDataSource, DashboardHeaderViewEventSource { }

public final class DashboardHeaderViewModel: DashboardHeaderViewProtocol {
    
    public var userName: String
    public var profilePicture: UIImage
    public var followersCount: String
    public var followingCount: String
    public var postCount: String
    
    public init(userName: String,
                profilePicture: UIImage,
                followersCount: String,
                followingCount: String,
                postCount: String) {
        self.userName = userName
        self.profilePicture = profilePicture
        self.followersCount = followersCount
        self.followingCount = followingCount
        self.postCount = postCount
    }
}

