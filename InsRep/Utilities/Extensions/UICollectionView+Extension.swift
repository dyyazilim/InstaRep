//
//  UICollectionView+Extension.swift
//  InsRep
//
//  Created by Oğuzhan Kabul on 15.11.2022.
//

import UIKit

public extension UICollectionView {

    func register(_ cell: BaseCollectionViewCell.Type) {
        register(cell.self, forCellWithReuseIdentifier: cell.reuseIdentifier)
    }
    
    func dequeueReusableCell<T: UICollectionViewCell>(for indexPath: IndexPath) -> T where T: Reuse {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
        }
        return cell
    }
    
    func scrollToNextItem() {
        let scrollOffset = CGFloat(floor(self.contentOffset.x + self.bounds.size.width))
        self.scrollToFrame(scrollOffset: scrollOffset)
    }
    
    func scrollToPreviousItem() {
        let scrollOffset = CGFloat(floor(self.contentOffset.x - self.bounds.size.width))
        self.scrollToFrame(scrollOffset: scrollOffset)
    }
    
    func scrollToFrame(scrollOffset : CGFloat) {
        guard scrollOffset <= self.contentSize.width - self.bounds.size.width else { return }
        guard scrollOffset >= 0 else { return }
        self.setContentOffset(CGPoint(x: scrollOffset, y: self.contentOffset.y), animated: true)
    }
    
    func scrollToLastItem(at scrollPosition: UICollectionView.ScrollPosition = .centeredHorizontally, animated: Bool = true) {
        let lastSection = numberOfSections - 1
        guard lastSection >= 0 else { return }
        let lastItem = numberOfItems(inSection: lastSection) - 1
        guard lastItem >= 0 else { return }
        let lastItemIndexPath = IndexPath(item: lastItem, section: lastSection)
        scrollToItem(at: lastItemIndexPath, at: scrollPosition, animated: animated)
    }
}

