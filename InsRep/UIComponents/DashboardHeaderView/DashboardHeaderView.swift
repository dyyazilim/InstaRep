//
//  DashboardHeaderView.swift
//  InsRep
//
//  Created by Oğuzhan Kabul on 13.11.2022.
//

import UIKit
import TinyConstraints

public class DashboardHeaderView: BaseView {
    
    let containerView: UIView = {
        let containerView = UIView()
        containerView.backgroundColor = UIColor(named: .primaryBackgroundColor)
        return containerView
    }()
    
    let profilPictureImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = .add
        imageView.layer.cornerRadius = 50
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let followersCountLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.textAlignment = .center
        label.textColor = UIColor(named: .primaryTextColor)
        label.font = .boldSystemFont(ofSize: 20)
        return label
    }()
    
    let followingCountLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.textAlignment = .center
        label.textColor = UIColor(named: .primaryTextColor)
        label.font = .boldSystemFont(ofSize: 20)
        return label
    }()
    
    let followersLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.textAlignment = .center
        label.textColor = UIColor(named: .primaryTextColor)
        label.text = .followers.localized()
        label.font = .systemFont(ofSize: 12)
        return label
    }()
    
    let followingLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.textAlignment = .center
        label.textColor = UIColor(named: .primaryTextColor)
        label.font = .systemFont(ofSize: 12)
        label.text = .following.localized()
        return label
    }()
    
    let userNameLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.textAlignment = .center
        label.numberOfLines = 0
        label.textColor = UIColor(named: .primaryTextColor)
        label.font = .boldSystemFont(ofSize: 22)
        return label
    }()
    
    
    public override func setupViews() {
        super.setupViews()
        addSubview(containerView)
        containerView.addSubviews([profilPictureImageView,
                                   followersCountLabel,
                                   followingCountLabel,
                                   followersLabel,
                                   followingLabel,
                                   userNameLabel])
        
        backgroundColor = .clear
        self.clipsToBounds = false
        
        setupLayout()
    }
    
    public override func setupLayout() {
        super.setupLayout()
        
        containerView.edgesToSuperview()
        
        profilPictureImageView.topToSuperview(offset: 16, usingSafeArea: true)
        profilPictureImageView.size(CGSize(width: 100, height: 100))
        profilPictureImageView.centerXToSuperview()
        
        followersCountLabel.centerY(to: profilPictureImageView)
        followersCountLabel.leadingToSuperview(offset: 8)
        followersCountLabel.trailingToLeading(of: profilPictureImageView, offset: -8)
        
        followingCountLabel.centerY(to: profilPictureImageView)
        followingCountLabel.leadingToTrailing(of: profilPictureImageView, offset: 8)
        followingCountLabel.trailingToSuperview(offset: 8)
        
        followersLabel.topToBottom(of: followingCountLabel, offset: 4)
        followersLabel.centerX(to: followersCountLabel)
        
        followingLabel.topToBottom(of: followingCountLabel, offset: 4)
        followingLabel.centerX(to: followingCountLabel)
        
        userNameLabel.topToBottom(of: profilPictureImageView, offset: 16)
        userNameLabel.leadingToSuperview(offset: 8)
        userNameLabel.trailingToSuperview(offset: 8)
        userNameLabel.bottomToSuperview(offset: -8)
    }
    
    func set(_ viewModel: DashboardHeaderViewModel) {
        userNameLabel.text = viewModel.userName
        followingCountLabel.text = viewModel.followingCount
        followersCountLabel.text = viewModel.followersCount
        profilPictureImageView.image = viewModel.profilePicture
    }
}


