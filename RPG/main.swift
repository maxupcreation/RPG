//
//  main.swift
//  RPG
//
//  Created by Maxime on 03/09/2019.
//  Copyright © 2019 Maxime. All rights reserved.
//

import Foundation

//*************************************** CLASS BEGIN ************************************************ **************************************************************************************************

class Character {
    var name: String
    

    init (name : String) {
        self.name = name
     
        
    } }


class Weapon {
    var name : String
    var actionspoints : Int
    var type : WeaponType?
    init(name : String, actionspoints : Int) {
        self.name = name
        self.actionspoints = actionspoints
  
    }
 
}


enum WeaponType {
    
    case Attack, Heal
    
}



class Warrior : Character {
    var weapon : Weapon?
    var hp: Int?
   
}
class Wizzard : Character {
    var weapon : Weapon?
    var hp: Int?
}
class Assassin : Character {
    var weapon : Weapon?
    var hp: Int?
}
class Archer : Character {
    var weapon : Weapon?
    var hp: Int?
}
class Shaman : Character {
    var weapon : Weapon?
    var hp: Int?
}
class Priest : Character {
    var weapon : Weapon?
    var hp: Int?
}


class Player {
    var name : String
    var team : [Character]
    func createteam() { while team.count < 3 {
        print("création de l'équipe du" + name + ", choisit 3 héros !") 
        print("🗡 1.Guerrier \n" + " 2.Mage \n" + " 3.Assassin \n" + " 4.Archer \n" + " 5.Shaman \n" + " 6.Prêtre \n")
        if let choice = readLine() {
            if choice == "1" { team.insert(Warrior(name: "Guerrier"), at:0)}
            else if choice == "2" {team.insert(Wizzard(name: "Mage"),at:0)}
            else if choice == "3" {team.insert(Assassin(name: "Assassin"),at: 0)}
            else if choice == "4" {team.insert(Archer(name: "Archer"),at: 0)}
           else if choice == "5" {team.insert(Shaman(name: "Shaman"),at: 0)}
            else if choice == "6" {team.insert(Priest(name: "Prêtre"),at: 0)}
            else { print("Choix non valide")} }
        
        
        
        
        func selectCharacter(in team : [Character]){
            print("selectionne le héros de ton choix")
        
       
            
            
            

            }
        
      
        }
 
    }
    init (name: String, team : [Character]) {
        self.name = name
        self.team = team

    
    }

}
    
/*************************************** CLASS END  ************************************************* **************************************************************************************************/

    var Player1 = Player(name: " Joueur 1", team: [Character]())
    var Player2 = Player (name: " Joueur 2", team: [Character]())
 
    
Player1.createteam()
Player2.createteam()

    
    
/*************************************** Combat ************************************************* **************************************************************************************************/
