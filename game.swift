//
//  game.swift
//  RPG
//
//  Created by Maxime on 12/09/2019.
//  Copyright © 2019 Maxime. All rights reserved.
//

import Foundation



class Game {
    let player1 : Player
    let player2 : Player
    
    init(player1 : Player, player2 : Player){
        self.player1 = player1
        self.player2 = player2
    
    }
    
    func start() {
        
        player1.createTeam()
        player2.createTeam()
        
    }
    
    func fightAgainst ( fighter1 : Player, fighter2 : Player) {
        
                print (fighter1.name + " choisi un héros pour combattre")
        let attakingCharacter = fighter1.selectCharacter()
    if attakingCharacter is Shaman {
       print("Que veux-tu faire ?")
       print("1. Attaquer /n 2.Soigner ")
       if let choice = readLine() {
            switch choice {
                case "1" : break
                    case "2" :
                        print("qui veux-tu soigner?")
                        let defendingCharacter = fighter1.selectCharacter()
                        attakingCharacter.heal(target:defendingCharacter)
                
                        default : print("erreur")
            }
        }
        
        }   ;
        
        
     let defendingCharacter = fighter2.selectCharacter()
     print (" Qui veux-tu attaquer ?")
     attakingCharacter.attack(target: defendingCharacter) }

     func fight() {
        print("Lancement du combat")
        fightAgainst(fighter1: player1, fighter2: player2)
        fightAgainst(fighter1: player2, fighter2: player1)
     }
}
