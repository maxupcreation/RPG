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
    func attack (target: Character) {
        
        target.hp -= self.weapon.actionspoints
        
        print( self.name + " attaque " + target.name )
        print ( target.name , " a perdu " , self.weapon.actionspoints)
        print(" il reste " , target.hp , " à ", target.name  )
    }
    
    func heal(target : Character) {
        
        target.hp += self.weapon.actionspoints
        print(self.name, "soigne", target.name)
        print(target.name, " a gagné", self.weapon.actionspoints)
        print("il reste",target.hp, "à", target.name)
        
    }
    
}
