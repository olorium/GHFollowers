//
//  FollowerCell.swift
//  GHFollowers
//
//  Created by Oleksii Vasyliev on 23.01.2022.
//

import UIKit

class FollowerCell: UICollectionViewCell {
    
    static let reuseID = "FollowerCell"
    let avatarImageView = GFAvatarImageView(frame: .zero)
    let usernameLabel = GFTitleLabel(textAlingment: .center, fontSize: 16)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(follower: Follower) {
        usernameLabel.text = follower.login
        avatarImageView.downloadImage(from: follower.avatarUrl)
    }
    
    private func configure() {
        let bgView = UIView(frame: contentView.bounds)
        addSubview(bgView)
        bgView.addSubview(avatarImageView)
        bgView.addSubview(usernameLabel)
        
        let padding: CGFloat = 8
        
        NSLayoutConstraint.activate([
            bgView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            bgView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            
            avatarImageView.topAnchor.constraint(equalTo: bgView.topAnchor, constant: padding),
            avatarImageView.leadingAnchor.constraint(equalTo: bgView.leadingAnchor, constant: padding),
            avatarImageView.trailingAnchor.constraint(equalTo: bgView.trailingAnchor, constant: -padding),
            avatarImageView.heightAnchor.constraint(equalTo: avatarImageView.widthAnchor),
            
            usernameLabel.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 12),
            usernameLabel.leadingAnchor.constraint(equalTo: bgView.leadingAnchor, constant: padding),
            usernameLabel.trailingAnchor.constraint(equalTo: bgView.trailingAnchor, constant: -padding),
            usernameLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
}
