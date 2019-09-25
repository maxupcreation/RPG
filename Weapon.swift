//
//  Weapon.swift
//  RPG
//
//  Created by Maxime on 12/09/2019.
//  Copyright © 2019 Maxime. All rights reserved.
//

import Foundation
class Weapon {
    var name : String
    var actionspoints : Int
    var type : WeaponType
    init(name : String, actionspoints : Int, type : WeaponType){
        self.name = name
        self.actionspoints = actionspoints
        self.type = type
        
    }
    
}

enum WeaponType {
    
    case Attack, Heal
    
}

