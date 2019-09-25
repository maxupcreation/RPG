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
                    attakingCharacter.heal(target:defendingCharacter); return
                    default : print("erreur")
            }
        }
    }
    ; if attakingCharacter is Priest {
        print("Qui veux-tu soigner?")
        let defendingCharacter = fighter1.selectCharacter()
        attakingCharacter.heal(target:defendingCharacter); return
      }
     ;print (" Qui veux-tu attaquer ?")
      let defendingCharacter = fighter2.selectCharacter()
      attakingCharacter.attack(target: defendingCharacter)
    }
    
    func teamIsAlive ( fighter : Player) -> Bool {
        var i = 0
        while i < fighter.team.count
        {
            if fighter.team[i].controlAlive() == true {return true}
         i += 1
        }
        return false
    }
    
    
    func fight() {
        print("Lancement du combat")
        var t = 0
        
        while teamIsAlive(fighter: player1) && teamIsAlive(fighter: player2) == true
        {
            fightAgainst(fighter1: player1, fighter2: player2)
            t += 1 ; print("tour" , t )
            fightAgainst(fighter1: player2, fighter2: player1)
            t += 1; print("tour" , t )
        }
        if teamIsAlive(fighter: player1) == true {print ("equipe 1 a gagné")}
        else { print("equipe 2 a gagné")
            
        }
        
    }
    
    
}  


