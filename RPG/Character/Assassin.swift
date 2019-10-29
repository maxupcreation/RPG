//
//  Assassin.swift
//  RPG
//
//  Created by Maxime on 12/09/2019.
//  Copyright © 2019 Maxime. All rights reserved.
//

import Foundation
class Assassin : Character {
    
    override init (name: String) {
        super.init(name : name)
        self.weapon = Weapon(name: "Dague" , actionspoints: 200, type: .Attack)
        self.hp = 100
    }
}
