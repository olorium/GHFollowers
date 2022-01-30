//
//  GFError.swift
//  GHFollowers
//
//  Created by Oleksii Vasyliev on 30.01.2022.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created an invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection."
    case invalidResponce = "Invalid response from the server. Please try again."
    case invalidData = "The data received from the server was invalid. Please try again."
}
