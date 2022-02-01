//
//  GFRepoItemVC.swift
//  GHFollowers
//
//  Created by Oleksii Vasyliev on 31.01.2022.
//

import UIKit

class GFRepoItemVC: GFItemInfoVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgrounColor: .systemPurple, title: "GitHub Profile")
    }
}
