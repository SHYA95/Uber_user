//
//  LoginModel.swift
//  UberDriver2
//
//  Created by Mohamed Khaled on 18/03/2023.
//

import Foundation
// MARK: - LoginData
struct LoginData: Codable {
    let id, username, first, last: String
    let email: String
    let roles: [String]
    let accessToken, status: String
}

