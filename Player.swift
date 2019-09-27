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
   
    // create team with bool insertteam()
    func createTeam() {
        while team.count < 3 {
          print("◻️ Création de l'équipe du" + name + " choisit " + String(3-team.count) + " héros !")
          print("🗡 1.Guerrier \n" + "✨ 2.Mage \n" + "🔪 3.Assassin \n" + "🏹 4.Archer \n" + "🌳 5.Shaman \n" + "🔅 6.Prêtre \n")
          if let choice = readLine() {
             insertInTeam (typechoice: choice)
          }
        }
    }
    // function that displays the status of the character in the print
    func displayStateCharacter(character : Character, index : Int) -> String {
        var stateCharacter = ""
        var countD = 0
        if (character.controlAlive() == false) {
            if countD == 0 {stateCharacter = " ☠ Mort "; countD += 1}
            
        }
      
        return("\n " + String(index+1) + ".    " + character.name + stateCharacter)
        
    }
    
    // function that allows you to choose a character
    func selectCharacter() -> Character  {
    
        print(displayStateCharacter(character : team[0],index : 0) + displayStateCharacter(character : team[1],index : 1) + displayStateCharacter(character : team[2],index : 2))
        if let choice = readLine()
        {
            switch choice {
            case "1" : if  team[0].controlAlive() == true { return team[0]}
            case "2" : if  team[1].controlAlive() == true {return team[1]}
            case "3" : if  team[2].controlAlive() == true {return team[2]}

            
            default : print("erreur, choix incorrect");
        
            }
          
        }
    return selectCharacter()
    }
    
    
    

    // choice name for Character(createteam)
    func selectedName() -> String {
        if let choice = readLine(){
            if choice != ""  {
                return choice }
            
        }
        return(selectedName())
    }
    // control similar name in a team
    
    func controlname (name : String ) -> Bool {
        var alreadyExists: Bool = false
        
        for oneTeam in team {
            if name.uppercased() == oneTeam.name.uppercased(){
                
                alreadyExists = true;
            }
            if (alreadyExists) {print("Le nom existe déja"); return false}
                
            }
            return true
        }

    // insert heroes choice
    
    func insertInTeam (typechoice : String) {
        var typeCharacter : String = ""
        var isNameOk : Bool = false
        
        
                      switch typechoice {
                      case "1" : typeCharacter = "guerrier 🗡 "
                      case "2" : typeCharacter = "Mage ✨"
                      case "3" : typeCharacter = "assassin 🔪"
                      case "4" : typeCharacter = "archer 🏹"
                      case "5" : typeCharacter = "shaman 🌳"
                      case "6" : typeCharacter = "prêtre 🔅"
                      default: print ("erreur");
                      }
        print ("▶︎ Choisi un nom pour ton " + typeCharacter)
        
        while (isNameOk == false)
        {
     let namechoice = selectedName()
            isNameOk = controlname(name : namechoice)
              if isNameOk == true {
                    switch typechoice {
                       case "1" : team.insert(Warrior(name: namechoice),at:0)
                       case "2" : team.insert(Wizzard(name: namechoice),at:0)
                       case "3" : team.insert(Assassin(name: namechoice),at:0)
                       case "4" : team.insert(Archer(name: namechoice),at:0)
                       case "5" : team.insert(Shaman(name: namechoice),at:0)
                       case "6" : team.insert(Priest(name: namechoice),at:0)
                       default: print ("erreur");
                    }
        print("♦️",namechoice + " a bien été ajouté dans ton équipe !")
              }
        
       }
        
    }
   
    
    
}


    
    


