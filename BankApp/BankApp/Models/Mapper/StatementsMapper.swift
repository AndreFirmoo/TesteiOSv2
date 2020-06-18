//
//  StatementsMapper.swift
//  BankApp
//
//  Created by Andre Jardim Firmo on 18/06/20.
//  Copyright © 2020 Andre Jardim Firmo. All rights reserved.
//

import Foundation

struct StatementList: Codable {
    let statementList: [Statement]
}

struct Statement: Codable {
    let title: String
    let desc: String
    let date: String
    let value: Double
}
