//
//  StorageManager.swift
//  HarryPotterFans
//
//  Created by Nikita Kuznetsov on 5/9/23.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject (_ result: ModelResults) {
        
        try! realm.write {
            realm.add(result)
        }
    }
    
    static func deleteObject(_ result: ModelResults) {
        
        try! realm.write {
            realm.delete(result)
        }
    }
}
