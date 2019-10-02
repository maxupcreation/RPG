//
//  Archer.swift
//  RPG
//
//  Created by Maxime on 12/09/2019.
//  Copyright © 2019 Maxime. All rights reserved.
//

import Foundation

class Archer : Character {
    override init (name: String) {
        super.init(name : name)
        self.weapon = Weapon(name: "Arc" , actionspoints: 25, type: .Attack)
        self.hp = 80
        }
}
