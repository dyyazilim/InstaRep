//
//  PostsCell.swift
//  InsRep
//
//  Created by Oğuzhan Kabul on 15.11.2022.
//

import UIKit
import TinyConstraints

public class PostItemCell: BaseCollectionViewCell, ReusableView {
    
    let photoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    public override func setupViews() {
        super.setupViews()
        contentView.addSubview(photoImageView)
    }
    
    public override func setupLayout() {
        super.setupLayout()
        photoImageView.leadingToSuperview(offset: 1)
        photoImageView.trailingToSuperview(offset: 1)
        photoImageView.topToSuperview(offset: 1)
        photoImageView.bottomToSuperview(offset: -1)
    }
    
    public func set(_ cellModel: PostItemCellModel) {
        photoImageView.image = cellModel.photo
    }
}

