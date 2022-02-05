//
//  GFFollowerItemVC.swift
//  GHFollowers
//
//  Created by Oleksii Vasyliev on 31.01.2022.
//

import UIKit

class GFFollowerItemVC: GFItemInfoVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(backgrounColor: .systemGreen, title: "Get Followers")
    }
    override func actionButtonTapped() {
        delegate.didTapGetFollowers(for: user)
    }
}
