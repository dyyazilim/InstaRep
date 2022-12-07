//
//  DashboardViewController.swift
//  InsRep
//
//  Created by Oğuzhan Kabul on 9.11.2022.
//

import UIKit
import TinyConstraints

final class DashboardViewController: BaseViewController<DashboardViewModel> {
    
    let headerView = DashboardHeaderView()
    
    let postsView = PostsView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        subscribeHeaderView()
        subscribePostView()
    }
    
    override func setupViews() {
        super.setupViews()
        view.addSubviews([headerView,
                          postsView])
    }
    
    override func setupLayouts() {
        super.setupLayouts()
        headerView.edgesToSuperview(excluding: .bottom)
        postsView.widthToSuperview()
        postsView.topToBottom(of: headerView)
        postsView.edgesToSuperview(excluding: .top)
    }
    
    func subscribeHeaderView() {
        let headerViewModel = DashboardHeaderViewModel(userName: "oguzhan.kabul", profilePicture: .add, followersCount: "38", followingCount: "29", postCount: "30")
        headerView.set(headerViewModel)
    }
    
    func subscribePostView() {
        let postsViewModel = PostsViewModel(phostItemCellModelList: [PostItemCellModel(photo: .add),
                                                                     PostItemCellModel(photo: .actions),
                                                                     PostItemCellModel(photo: .checkmark),
                                                                     PostItemCellModel(photo: .remove),
                                                                     PostItemCellModel(photo: .strokedCheckmark),
                                                                     PostItemCellModel(photo: .add),
                                                                     PostItemCellModel(photo: .actions),
                                                                     PostItemCellModel(photo: .checkmark),
                                                                     PostItemCellModel(photo: .remove),
                                                                     PostItemCellModel(photo: .strokedCheckmark),
                                                                     PostItemCellModel(photo: .add),
                                                                     PostItemCellModel(photo: .actions),
                                                                     PostItemCellModel(photo: .checkmark),
                                                                     PostItemCellModel(photo: .remove),
                                                                     PostItemCellModel(photo: .strokedCheckmark),
                                                                     PostItemCellModel(photo: .add),
                                                                     PostItemCellModel(photo: .actions),
                                                                     PostItemCellModel(photo: .checkmark),
                                                                     PostItemCellModel(photo: .remove),
                                                                     PostItemCellModel(photo: .strokedCheckmark)])
        postsView.set(postsViewModel)
    }
    
}
