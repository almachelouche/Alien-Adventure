//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
  
    func planetData(dataFile: String) -> String {
        let planetDataURL = Bundle.main.url(forResource: dataFile, withExtension: "json")!
        let rawPlanetDictionary = try! Data(contentsOf: planetDataURL)
        var planetDictionary : [[String:Any]]!
        do {
            planetDictionary = try!
                JSONSerialization.jsonObject(with: rawPlanetDictionary, options: JSONSerialization.ReadingOptions()) as! [[String:Any]]
        }
        var totalPoints = 0
        var largest = 0
        var planet = String()
        for item in planetDictionary {
            if let name = item["Name"] as? String {
                print(name)
            if let commonItems = item["CommonItemsDetected"] as? Int {
                if let uncommonItems = item["UncommonItemsDetected"] as? Int {
                    if let rareItems = item["RareItemsDetected"] as? Int {
                        if let legendaryItems = item["LegendaryItemsDetected"] as? Int {
                            totalPoints = (4*legendaryItems)+(3*rareItems)+(2*commonItems)+(1*uncommonItems)
                            print (totalPoints)
                            if totalPoints > largest {
                                largest = totalPoints
                                planet = name
                            }
                            }
                        }
                    }
                }
            }
        }
         return planet
        }
    
    }


// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"
