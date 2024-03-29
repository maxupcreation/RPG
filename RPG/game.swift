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
    
    /// We create the start function to create the team of each player
    func start() {
        player1.createTeam(otherPlayer : player2)
        player2.createTeam(otherPlayer: player1)
    }
    
    
    /// we select the character and who will attack
    func fightAgainst ( fighter1 : Player, fighter2 : Player){
        
        // We add a chance to find a case with a weapon on each player's turn
        let weaponCase = Case()
        
        print ("🕹",fighter1.name + " choisi un héros pour combattre")
        let attakingCharacter = fighter1.selectCharacter()
        
        // If he's a Shaman, he has a choice between attacking or healing
        if attakingCharacter is Shaman {
            if let newWeapon = weaponCase.randomWeapon(){
                attakingCharacter.weapon = newWeapon
                
                // the effects of the new weapons
                attakingCharacter.weaponBonusMalus()
            }
            print("Que veux-tu faire ?")
            print("⚔️ 1. Attaquer \n 💚 2.Soigner ")
            if let choice = readLine() {
                switch choice {
                case "1" : break
                case "2" :print("qui veux-tu soigner? 💚 ")
                let defendingCharacter = fighter1.selectCharacter()
                attakingCharacter.heal(target:defendingCharacter)
                    return
                default : print("erreur")
                }
            }
        }
            
            // if it's a priest, he can only heal (no case because no weapon)
        else if attakingCharacter is Priest {
            print("Qui veux-tu soigner?")
            let defendingCharacter = fighter1.selectCharacter()
            attakingCharacter.heal(target:defendingCharacter)
            return
        }
            // if it's another class, he has a chance of getting a safe.
        else {
            if let newWeapon = weaponCase.randomWeapon(){
                attakingCharacter.weapon = newWeapon
                // the effects of the new weapons are only applied once
                attakingCharacter.weaponBonusMalus()
            }
        }
        // if it's not a shaman or a priest, he can attack
        attakingCharacter.weaponBonusMalus()
        print (" Qui veux-tu attaquer ?")
        let defendingCharacter = fighter2.selectCharacter()
        attakingCharacter.attack(target: defendingCharacter)
    }
    
    /// We check the state of the players of each character on the team, as long as they are all alive, we return true
    func teamIsAlive ( fighter : Player) -> Bool {
        
        for character in fighter.team {
            if character.controlAlive() {return true}
        }
        return false
    }
    
    /// fight phase, we attack the characters
    func fight() {
        print("⚔️ Lancement du combat")
        var turn = 0
        var team1Alive = teamIsAlive(fighter: player1)
        var team2Alive = teamIsAlive(fighter: player2)
        
        // as long as both teams are alive, we make them fight
        while team1Alive && team2Alive
        {
            fightAgainst(fighter1: player1, fighter2: player2)
            team2Alive = teamIsAlive(fighter: player2)
            if team2Alive {
                fightAgainst(fighter1: player2, fighter2: player1)
            }
            team1Alive = teamIsAlive(fighter: player1)
            // we count the turn
            turn += 1
            print("⏳ Tour" , turn )
        }
    }
    
    /// If Player 1's team is alive, it means he won, otherwise it's Team 2.
    func winTeam() {
        if teamIsAlive(fighter: player1) {
            print ("🎊 Joueur 1 a gagné !\n")
            player1.descriptTeamWin()
            player2.descriptTeamWin() }
        else {
            print("🎊 Joueur 2 a gagné !\n")
            player2.descriptTeamWin()
            player1.descriptTeamWin()
        }
    }
}  

