//
//  game.swift
//  RPG
//
//  Created by Maxime on 12/09/2019.
//  Copyright © 2019 Maxime. All rights reserved.
//

import Foundation
   var indexplayer1 = 0
var indexplayer2 = 0


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
 
    func fight() {
   
        
        print( player1.name + " choisi un héros pour combattre")
       indexplayer1 = player1.selectCharacter()
       
        print (" Qui veux-tu attaquer ?")
      indexplayer2 =  player2.selectCharacter()
    
         player2.team[indexplayer2].hp -= player1.team[indexplayer1].weapon.actionspoints
    print( player1.team[indexplayer1].name + " attaque " + player2.team[indexplayer2].name )
        print ( player1.team[indexplayer1].name , " a perdu " , player1.team[indexplayer1].weapon.actionspoints)
        print(" il reste " , player2.team[indexplayer2].hp , " à ", player2.team[indexplayer2].name  )
        
     /*   print( player2.name + " choisi un héros pour combattre")
        player2.selectCharacter()
    print (" Qui veux-tu attaquer ?")
        player1.selectCharacter()
    */
    }

}

