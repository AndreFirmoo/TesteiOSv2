//
//  RealmRepository.swift
//  BankApp
//
//  Created by Andre Jardim Firmo on 18/06/20.
//  Copyright © 2020 Andre Jardim Firmo. All rights reserved.
//

import Foundation

import RealmSwift

class RealmRepository {
    let realm = try? Realm()
    
    func saveObjc(obj: Object) {
        try? realm?.write {
            realm?.add(obj)
        }
    }
    
    func updateObj(obj: UserRealm) {
        try? realm?.write {
            realm?.add(obj, update: .modified)
        }
    }
    
    func deleteObj(obj: UserRealm) {
        try? realm?.write {
            realm!.delete(obj)
        }
    }
    
    func getObj() -> UserRealm? {
        let obj = realm?.objects(UserRealm.self)
        return obj?.first
    }
}
