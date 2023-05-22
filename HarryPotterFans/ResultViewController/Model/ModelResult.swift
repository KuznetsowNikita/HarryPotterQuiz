//
//  ModelResult.swift
//  HarryPotterFans
//
//  Created by Nikita Kuznetsov on 5/8/23.
//

import RealmSwift

class ModelResults: Object {
    
    @objc dynamic var name: String?
    @objc dynamic var result: String?
    
    convenience init(name: String?, result: String?) {
        self.init()
        self.name = name
        self.result = result
    }
    
}
