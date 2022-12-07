//
//  DashboardHeaderView.swift
//  InsRep
//
//  Created by Oğuzhan Kabul on 13.11.2022.
//

import UIKit
import TinyConstraints

public class PostsView: BaseView {
    
    let photosCollectionView: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: (UIScreen.main.bounds.width-20)/3, height: (UIScreen.main.bounds.width-20)/3)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(PostItemCell.self, forCellWithReuseIdentifier: PostItemCell.reuseIdentifier)
        collectionView.showsVerticalScrollIndicator = true
        return collectionView
    }()
    
    var postsViewModel: PostsViewModel? = nil
    
    public override func setupViews() {
        super.setupViews()
        addSubview(photosCollectionView)
        backgroundColor = .clear
        setupLayout()
        setCollectionView()
    }
    
    public override func setupLayout() {
        super.setupLayout()
        photosCollectionView.edgesToSuperview()
    }
    
    private func setCollectionView() {
        photosCollectionView.dataSource = self
        photosCollectionView.delegate = self
    }
    
    func set(_ viewModel: PostsViewModel) {
        self.postsViewModel = viewModel
        self.photosCollectionView.reloadData()
    }
}

extension PostsView: UICollectionViewDelegate { }

extension PostsView: UICollectionViewDataSource {
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let postsViewModel = postsViewModel else { return 0 }
        return postsViewModel.phostItemCellModelList.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: PostItemCell = collectionView.dequeueReusableCell(for: indexPath)
        guard let postsViewModel = postsViewModel else { return cell }
        cell.set(postsViewModel.getPostItemCellModel(indexPath))
        return cell
    }
}

extension PostsView: UICollectionViewDelegateFlowLayout {
    public func collectionView(_ collectionView: UICollectionView,
                               layout collectionViewLayout: UICollectionViewLayout,
                               sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (UIScreen.main.bounds.width-20)/3, height: (UIScreen.main.bounds.width-20)/3)
    }
}


