//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Oleksii Vasyliev on 01.02.2022.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
