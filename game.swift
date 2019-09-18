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
        
        player1.createteam()
        player2.createteam()
        
    }
    
    func fightagainst ( fighter1 : Player, fighter2 : Player) {
        
        print (fighter1.name + " choisi un héros pour combattre")
        fighter1.selectCharacter()
        print (" Qui veux-tu attaquer ?")
        fighter2.selectCharacter()
        
        fighter2.team[indexheroe].hp -= fighter1.team[indexheroe].weapon.actionspoints
        print( fighter1.team[indexheroe].name + " attaque " + fighter2.team[indexheroe].name )
        print ( fighter1.team[indexheroe].name , " a perdu " , fighter1.team[indexheroe].weapon.actionspoints)
        print(" il reste " , fighter2.team[indexheroe].hp , " à ", fighter2.team[indexheroe].name  )
        
        
    }
 
    func fight() {
  
        fightagainst(fighter1: player1, fighter2: player2)
        fightagainst(fighter1: player2, fighter2: player1)
    }
    
        
}


