//
//  FollowersListVC.swift
//  GHFollowers
//
//  Created by Oleksii Vasyliev on 23.01.2022.
//

import UIKit

class FollowersListVC: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}