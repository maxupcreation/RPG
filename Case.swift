//
//  Case.swift
//  RPG
//
//  Created by Maxime on 23/09/2019.
//  Copyright © 2019 Maxime. All rights reserved.
//

import Foundation

// create a array for weapon case

class Case {
    var weaponCase =
    [Weapon(name: "Barbe à papa magique", actionspoints: 5, type: .Attack),
    Weapon(name: "Epée maléfique du seigneur noir", actionspoints: 50, type: .Attack),
    Weapon(name: "Lame maudite du monde des morts", actionspoints: 100, type: .Attack),
    Weapon(name: "Baton de jouvance", actionspoints: 1, type: .Attack),
    Weapon(name: "Dague à double tranchant des exilés", actionspoints: 35, type: .Attack)]
    
    // create a fonction for random weapon
  
    func randomWeapon() -> Weapon? {
     let randomCase = Int.random(in: 0...100)
     if randomCase > 70 {
     print(" 📦 Vous avez trouvé un coffre qui contient une arme, celle-ci semble imprégné de magie ✨ mais impossible de connaître sa puissance ou son effet, \n voulez-vous équiper votre personnage de l'arme ? \n ♦️ Pressez Y pour OUI ou N pour NON")
        repeat {
        if let choice = readLine() {
            switch choice.lowercased() {
            case "y" : let index = Int.random(in: 0..<weaponCase.count);print(weaponCase[index].name,"a été équipé")
            return weaponCase[index]
            case "n" : return nil
            default : print("choix incorrect")
            }
        }
    } while true
       
    }
    return nil
    }
}
