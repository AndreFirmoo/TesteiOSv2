//
//  User.swift
//  BankApp
//
//  Created by Andre Jardim Firmo on 18/06/20.
//  Copyright © 2020 Andre Jardim Firmo. All rights reserved.
//

import Foundation
import RealmSwift

class UserRealm: Object {
    @objc dynamic var username: String = ""
    @objc dynamic var userId: String = ""
    @objc dynamic var name: String = ""
    @objc dynamic var account: String = ""
    @objc dynamic var balance: String = ""
    
    override static func primaryKey() -> String {
        return "userId"
    }
}
