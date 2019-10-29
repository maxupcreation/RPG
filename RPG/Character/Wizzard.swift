//
//  Wizzard.swift
//  RPG
//
//  Created by Maxime on 12/09/2019.
//  Copyright © 2019 Maxime. All rights reserved.
//

import Foundation

class Wizzard : Character {
    override init (name: String) {
        super.init(name : name)
        self.weapon = Weapon(name: "sceptre" , actionspoints: 200, type: .Attack)
        self.hp = 90
    }
}
