//
//  Player.swift
//  RPG
//
//  Created by Maxime on 12/09/2019.
//  Copyright © 2019 Maxime. All rights reserved.
//

import Foundation

var choiceheroe : Int?
var namechoice : String = ""

class Player {
    var name : String
    var team = [Character]()
    var indexhero : Int = 0
    init (name: String) {
        self.name = name
    }
   
    // create team with bool insertteam()
    
    func createteam() {
        var binserteam : Bool = false
        
        while team.count < 3 {
            
            
            print("création de l'équipe du" + name + " choisit " + String(3-team.count) + " héros !")
            
            repeat {
                print("🗡 1.Guerrier \n" + " 2.Mage \n" + " 3.Assassin \n" + " 4.Archer \n" + " 5.Shaman \n" + " 6.Prêtre \n")
                
                if let choice = readLine() {
                    binserteam = insertteam (typechoice: choice)
                }
            } while binserteam == false
            
        }
    }
    
    
    
    func selectCharacter(){
       print(" selectionne le héros de ton choix")
        print("\n 1.   " + team[0].name + "\n   2.  " + team[1].name + "\n  3  " + team[2].name)
        if let choice = readLine()
        {
            switch choice {
            case "1" : choiceheroe = 1
            case "2" : choiceheroe = 2
            case "3" : choiceheroe = 3
            
            
            
            default : print("erreur, choix incorrect"); return selectCharacter()
            }
        }
    }
    

    // choice name for Character(createteam)
    func selectedname() -> String {
        if let choice = readLine(){
            if choice != ""  {
                return choice }
            
        }
        return(selectedname())
    }
    // control name similary for createteam
    
    func controlname () -> Bool {
        var alreadyexists: Bool = false
        
        for oneteam in team {
            if namechoice.uppercased() == oneteam.name.uppercased(){
                
                alreadyexists = true;
            }
            if (alreadyexists) {print("Le nom existe déja"); return false}
                
            }
            return true
        }

    func insertteam (typechoice : String) -> Bool {
        var chaine : String = ""
        var bnameok : Bool = false
        
        
        switch typechoice {
        case "1" : chaine = "guerrier"
        case "2" : chaine = "Mage"
        case "3" : chaine = "assassin"
        case "4" : chaine = "archer"
        case "5" : chaine = "shaman"
        case "6" : chaine = "prêtre"
        default: print ("erreur"); return false
        }
        
        print ("choisi un nom pour ton " + chaine)
        
        while (bnameok == false)
        {
        namechoice = selectedname()
        bnameok = controlname()
        if bnameok == true {
            switch typechoice {
            case "1" : team.insert(Warrior(name: namechoice),at:0)
            case "2" : team.insert(Wizzard(name: namechoice),at:0)
            case "3" : team.insert(Assassin(name: namechoice),at:0)
            case "4" : team.insert(Archer(name: namechoice),at:0)
            case "5" : team.insert(Shaman(name: namechoice),at:0)
            case "6" : team.insert(Priest(name: namechoice),at:0)
            default: print ("erreur"); return false
        }
            print( namechoice + " a bien été ajouté dans ton equipe ")
            
       }
        
        }
        return true
    }
    
    
}


    
    


