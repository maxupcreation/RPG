//
//  main.swift
//  RPG
//
//  Created by Maxime on 03/09/2019.
//  Copyright © 2019 Maxime. All rights reserved.
//

import Foundation

// we initialize the instance of game class

let game = Game (player1: Player (name : " Joueur 1"), player2: Player( name: " Joueur 2"))

// we call the different functions (the three stages of the game : team building, fighting and winning )

game.start()
game.fight()
game.winTeam()
