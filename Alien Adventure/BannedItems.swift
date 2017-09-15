
//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        let dataFileURL = Bundle.main.url(forResource: dataFile, withExtension: "plist")!
        let LaserDictionary = NSArray(contentsOf: dataFileURL) as! [[String: Any]]
        print(LaserDictionary)
        var bannedItemsFromPlanet = [Int]()
        var laserItems = [String]()
        for item in LaserDictionary {
            if let laserSearch = item["Name"] as? String  {
                if laserSearch.contains("Laser") {
                    laserItems.append(laserSearch)
                    print (laserItems)
                
                    let laserHistoricalDate = item["HistoricalData"] as! [String: AnyObject]
                    if let carbonAge = laserHistoricalDate["CarbonAge"] as? Int {
                        if carbonAge<30  {
                            bannedItemsFromPlanet.append(item["ItemID"] as! Int)
                            
                            print(bannedItemsFromPlanet)
                        
                        }
                    }
                }
            }
        }
        
        return bannedItemsFromPlanet
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"
