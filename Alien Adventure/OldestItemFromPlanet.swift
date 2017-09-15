//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        var oldestItem : UDItem?
        for item in inventory {
        if let PlanetOfOrigin = item.historicalData["PlanetOfOrigin"] as? String {
            if PlanetOfOrigin == planet {
            if let oldestItemsOfOrigin = item.historicalData["CarbonAge"] as? Int {
                if oldestItemsOfOrigin > 0 {
                    oldestItem = item
                }
            }
            }
     
    }
    }
    return oldestItem
}
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"
