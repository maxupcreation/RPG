//
//  main.swift
//  RPG
//
//  Created by Maxime on 03/09/2019.
//  Copyright © 2019 Maxime. All rights reserved.
//

import Foundation
// we initialize the class game
let game = Game (player1: Player (name : " Joueur 1"), player2: Player( name: " Joueur 2"))

game.start()
game.fight()


/*
TODO//
  - voir comment faire pour ajouter symbole des personnages sur les choix de team
 func symbolTypeCharacter(){
 if team[0] is Warrior {print("🗡") }
 }
 
 - ajouter un print lors de l'acquisition d'une arme (+ajouter /n sur la lame maudite aprés " destructrice".)
*/
