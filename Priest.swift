//
//  Priest.swift
//  RPG
//
//  Created by Maxime on 12/09/2019.
//  Copyright © 2019 Maxime. All rights reserved.
//

import Foundation

class Priest : Character {
    override init (name: String) {
        super.init(name : name)
        self.weapon = Weapon(name: "Soin puissant" , actionspoints: 20, type: .Heal)
        self.hp = 100
        
}
}
