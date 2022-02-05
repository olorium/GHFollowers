//
//  UITableView+Ext.swift
//  GHFollowers
//
//  Created by Oleksii Vasyliev on 01.02.2022.
//


import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
    

    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
