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
    var boolOneName = true
    init (name: String) {
        self.name = name
    }    
    func descriptTeamWin(){
        for DescriptTeam in team {
            if boolOneName == true { print("🕹",self.name,"\n")
                boolOneName = false
            }
            DescriptTeam.description()
        }
    }
    
    /// create team with bool insertteam()
    func createTeam(otherPlayer : Player) {
        while team.count < 3 {
            print("◻️ Création de l'équipe du" + name + " choisit " + String(3-team.count) + " héros !")
            print("🗡 1.Guerrier \n" + "✨ 2.Mage \n" + "🔪 3.Assassin \n" + "🏹 4.Archer \n" + "🌳 5.Shaman \n" + "🔅 6.Prêtre \n")
            if let choice = readLine() {
                if choice >= "1" && choice <= "6" && choice.count == 1 {
                    insertInTeam (typechoice: choice, otherPlayer : otherPlayer)
                }
                else {print("❌ Erreur choix des personnages, Choisissez un chiffre entre 1 et 6.")     }
            }
        }
    }
    
    /// function that displays the status of the character in the print
    func displayStateCharacter(character : Character, index : Int) -> String {
        var stateCharacter = "" 
        var countD = 0
        if (character.controlAlive() == false) {
            if countD == 0 {stateCharacter = " ☠ Mort "
            countD += 1
                
            }
            
        }
        
        /// function for print emoji type character
        func emojiCharacter() -> String {
            var emoji : String = ""
            switch character {
            case is Warrior :  emoji = "🗡  "
            case is Wizzard :  emoji = "✨  "
            case is Assassin:  emoji = "🔪  "
            case is Shaman :   emoji = "🌳  "
            case is Archer :   emoji = "🏹  "
            case is Priest :   emoji = "🔅  "
            default : break
            }
            return emoji
        }
        
        return("\n " + emojiCharacter() + String(index+1) + ".    " + character.name + stateCharacter)
        
    }
    
    /// function that allows you to choose a character
    func selectCharacter() -> Character  {
        
        print(displayStateCharacter(character : team[0],index : 0) + displayStateCharacter(character : team[1],index : 1) + displayStateCharacter(character : team[2],index : 2))
        if let choice = readLine(){
            switch choice {
            case "1" : if  team[0].controlAlive() { return team[0]}
            case "2" : if  team[1].controlAlive() {return team[1]}
            case "3" : if  team[2].controlAlive() {return team[2]}
                
                
            default : print("erreur, choix incorrect")
                
            }
            
        }
        return selectCharacter()
    }
    
    /// choice name for Character(createteam)
    func selectedName() -> String {
        if let choice = readLine(){
            if choice != ""  {
                return choice }
            
        }
        return(selectedName())
    }
    
    
    /// check similar names for all teams
    func controlName (nameControl : String, otherPlayer : Player ) -> Bool {
        var alreadyExists: Bool = false
        
        for oneTeam in team {
            if nameControl.uppercased() == oneTeam.name.uppercased(){
                
                alreadyExists = true
            }
            if (alreadyExists) {print("❌ Le nom existe déja")
                return false}
            
        }
        
        for oneTeam in otherPlayer.team {
            if nameControl.uppercased() == oneTeam.name.uppercased(){
                
                alreadyExists = true
            }
            if (alreadyExists) {print("Le nom existe déja")
                return false
                
            }
        }
        return true
    }
    
    /// insert heroes choice
    func insertInTeam (typechoice : String, otherPlayer : Player) {
        var typeCharacter : String = ""
        var isNameOk : Bool = false
        switch typechoice {
        case "1" : typeCharacter = "guerrier 🗡 "
        case "2" : typeCharacter = "Mage ✨"
        case "3" : typeCharacter = "assassin 🔪"
        case "4" : typeCharacter = "archer 🏹"
        case "5" : typeCharacter = "shaman 🌳"
        case "6" : typeCharacter = "prêtre 🔅"
        default: print ("erreur")
        }
        print ("▶︎ Choisi un nom pour ton " + typeCharacter)
        while (isNameOk == false){
            let namechoice = selectedName()
            
            isNameOk = controlName (nameControl: namechoice, otherPlayer : otherPlayer)
            if isNameOk == true {
                switch typechoice {
                case "1" : team.append(Warrior(name: namechoice))
                case "2" : team.append(Wizzard(name: namechoice))
                case "3" : team.append(Assassin(name: namechoice))
                case "4" : team.append(Archer(name: namechoice))
                case "5" : team.append(Shaman(name: namechoice))
                case "6" : team.append(Priest(name: namechoice))
                default: print ("erreur")
                }
                print("♦️",namechoice + " a bien été ajouté dans ton équipe !")
            }
        }
    }
}






