//
//  InscriptionEternalStar.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func inscriptionEternalStar(inventory: [UDItem]) -> UDItem? {
        var eternalStar : UDItem? = nil
        var inscription : Bool
        for item in inventory {
            if let subtext = item.inscription?.contains("THE ETERNAL STAR") {
                inscription = subtext
                eternalStar = item
            }
        }
       return eternalStar
    }

    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 3"
