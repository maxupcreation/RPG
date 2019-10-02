//
//  Shaman.swift
//  RPG
//
//  Created by Maxime on 12/09/2019.
//  Copyright © 2019 Maxime. All rights reserved.
//

import Foundation

class Shaman : Character {
    override init (name: String) {
        super.init(name : name)
        self.weapon = Weapon(name: "Baton" , actionspoints: 5, type: .Attack)
        self.weapon = Weapon(name: "Soin" , actionspoints: 10, type: .Heal)
        self.hp = 100
        }
}
