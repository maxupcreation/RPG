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
        if weapon.name == "Dague à double tranchant des exilés" {
            self.hp -= 15; print((weapon.name), "a fait perdre 15 point de vie ❤️ à", (self.name))
        }
        
        print( self.name + " attaque " + target.name )
        print ( target.name , " a perdu " , self.weapon.actionspoints , "point de vie ❤️")
        print(" il reste " , target.hp , " point de vie ❤️ à ", target.name  )
    
    }
    
    func heal(target:Character){
        
        target.hp += self.weapon.actionspoints
        print(self.name, "soigne 💚", target.name)
        print(target.name, " a gagné", self.weapon.actionspoints, "point de vie ❤️")
        print("il reste",target.hp,"de point de vie ❤️ à", target.name)
 
        
    }
    func controlAlive() -> Bool {
        if self.hp <= 0 {
           var p = 0
            if p == 0 {
                print("mort")
                p += 1
            }
        return false
            
        
            
        }
          return true
    }
    
    // weapon case effect
    func weaponBonusMalus() {
        if weapon.name == "Barbe à papa magique" {
            self.hp += 30 ; print((self.name) , "a gagné 50 point de vie ❤️ grâce à barbe à papa magique, mais l'arme ne semble pas trés puissante...")
        }
        else if weapon.name == "Epée maléfique du seigneur noir" {
            self.hp -= 80; print("l'Epée maléfique du seigneur noir aspire l'energie de" , (self.name) , "et lui fait perdre 80 points de vie ❤️")
        }
        
      else if weapon.name == "Lame maudite du monde des morts" {
            self.hp = 1; print((self.name), " semble soudain entre la vie et la mort mais la lame maudite semble incroyablement destructrice", "il reste", (self.hp), "de vie ❤️ à", (self.name))
        }
       else if weapon.name == "Baton de jouvance"{
            self.hp = 200; print ( (self.name) , "s'illumine soudainement, rajeunissant ses traits et l'enveloppant d'une chaleur douce et agréable", (self.name), "a" ,(self.hp),"de vie ❤️")
        }
    }
    
    }


