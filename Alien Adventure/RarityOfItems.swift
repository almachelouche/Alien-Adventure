//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        var rareItems = [UDItemRarity:Int]()
        rareItems[.common] = 0
        rareItems[.uncommon]  = 0
        rareItems[.rare] = 0
        rareItems[.legendary] = 0
        
        for item in inventory {
            switch item.rarity {
            case .common:
                rareItems[.common]?+=1
            case .uncommon:
                rareItems[.uncommon]?+=1
            case .rare :
                rareItems[.rare]?+=1
            case .legendary :
                rareItems[.legendary]?+=1
            }
        }
        
        
        return rareItems
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"
