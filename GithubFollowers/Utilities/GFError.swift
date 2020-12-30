//
//  ErrorMessage.swift
//  GithubFollowers
//
//  Created by Jerrion Joy on 12/29/20.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created an invalid request please try again"
    case unableToComplete = "Unable to complete your request please check your internet connection"
    case invalidResponse = "Invalid response from the server please try again"
    case invalidData = "The data receieved from the server was invalid Please try again"
}
