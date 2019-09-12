//
//  Player.swift
//  RPG
//
//  Created by Maxime on 12/09/2019.
//  Copyright © 2019 Maxime. All rights reserved.
//

import Foundation


class Player {
    var name : String
    var team = [Character]()
    init (name: String) {
        self.name = name
    }
        func createteam() { while team.count < 3 {
        print("création de l'équipe du" + name + ", choisit 3 héros !")
        print("🗡 1.Guerrier \n" + " 2.Mage \n" + " 3.Assassin \n" + " 4.Archer \n" + " 5.Shaman \n" + " 6.Prêtre \n")
        if let choice = readLine() {
            switch choice {
            case "1" :
                let name = selectedname()
                team.insert(Warrior(name: name), at:0)
                
            case "2":
                
                team.insert(Wizzard(name: name),at:0)
                
            case "3":
                
                team.insert(Assassin(name: name),at: 0)
                
                
            case "4":
                
            team.insert(Archer(name: name),at: 0)
                
                
            case "5":
                
                team.insert(Shaman(name: name),at: 0)
                
            case "6":
                
                team.insert(Priest(name: name),at: 0)
                
            default: print("erreur")
                
                
            }
        }
        }
    }
    func selectCharacter(in team : [Character]){
        print("selectionne le héros de ton choix")
    }
    
    func selectedname() -> String {
        if let choice = readLine(){
            if choice != "" {
                return choice
                
            }
        }
        print("Erreur, choissiez un personnage avec au moins 1 caractère")
        return selectedname()
    }
}
