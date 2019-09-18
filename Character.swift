//
//  class.swift
//  RPG
//
//  Created by Maxime on 11/09/2019.
//  Copyright © 2019 Maxime. All rights reserved.
//

import Foundation

var dead = false

class Character {
    var name: String
    var weapon : Weapon
    var hp : Int
  
    
    init (name : String) {
        self.name = name
        self.weapon = Weapon(name: "Epée", actionspoints: 10, type: .Attack)
        self.hp = 110
}
}
      /*  func deadF() {
        
        if hp >= 0 { dead = true }
}

















 */
