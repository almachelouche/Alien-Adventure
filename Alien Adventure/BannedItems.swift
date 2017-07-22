//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation
let dataFileURL = Bundle.main.url(forResource: "dataFile", withExtension: "plist")!
let LaserDictionary = NSArray(contentsOf: dataFileURL) as! [[String: Any]]
extension Hero {
    
        func bannedItems(dataFile: String) -> [Int] {
        
                var bannedItemsFromPlanet = [Int]()
        for item in LaserDictionary {
            if let laserSearch = item["Name"] as? String  {
                if laserSearch.contains("laser") {
                    let laserHistoricalDate = item["HistoricalData"] as! [String: AnyObject]
                    if let carbonAge = laserHistoricalDate["carbonAge"] as? Int {
                        if carbonAge<30 {
                        bannedItemsFromPlanet.append(item["baseValue"] as! Int)
                    }
                    }
                }
            }
        }
        
        return bannedItemsFromPlanet
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"
