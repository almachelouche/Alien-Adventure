//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        var charact = [Character:Int]()
        if inventory.isEmpty {
            return nil
        } else {
        
        for item in inventory {
            for i in item.name.lowercased().characters {
                print (i)
                if let value = charact[i] {
                   let count = value + 1
                    charact[i] = count
                } else {
                    charact[i] = 1
                }
            }
        }
        var highestCount : Int = 0
        var mostCommonChar : Character = "a"
        for (i,count) in charact {
            if count > highestCount {
                highestCount = count
                mostCommonChar = i
                print ("Most common character is \(mostCommonChar) it occured \(highestCount)")
            }
        }
            print (mostCommonChar)
            return mostCommonChar
    }
        
}
}
