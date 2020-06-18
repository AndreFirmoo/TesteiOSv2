//
//  UserMapper.swift
//  BankApp
//
//  Created by Andre Jardim Firmo on 18/06/20.
//  Copyright © 2020 Andre Jardim Firmo. All rights reserved.
//

import Foundation


struct UserMapper: Codable {
    let userAccount: UserInfo
    let error: ErrorResponse
}

struct UserInfo: Codable {
    let userId: Double?
    let name: String?
    let bankAccount: String?
    let agency: String?
    let balance: Double?
}

struct ErrorResponse: Codable {
    let code: Int?
    let message: String?
}
