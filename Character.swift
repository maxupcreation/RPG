//
//  class.swift
//  RPG
//
//  Created by Maxime on 11/09/2019.
//  Copyright © 2019 Maxime. All rights reserved.
//

import Foundation

class Character {
    var name: String
    var weapon : Weapon
    var hp : Int
    
    
    init (name : String) {
        self.name = name
        self.weapon = Weapon(name: "Epée", actionspoints: 10, type: .Attack)
        self.hp = 110
        
    /*    func description() {
            print("nom :  " + self.name)
            print("vie :   \(self.hp) ")
            print("Arme:   \(self.weapon)" ) */
        }

}





















