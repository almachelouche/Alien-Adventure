//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1: String, s2: String, shuffle: String) -> Bool {
    var combinedStrings = s1+s2
    var newS1 = s1
    var newS2 = s2
        if s1.isEmpty && s2.isEmpty && shuffle.isEmpty {
            return true
        } else if shuffle.characters.count != combinedStrings.characters.count {
            return false
        }
        for item in shuffle.characters {
            if item == newS1[newS1.startIndex] {
               newS1.remove(at: newS1.startIndex)
                newS1.insert("^", at: newS1.endIndex)
            } else if item == newS2[newS2.startIndex] {
                newS2.remove(at: newS2.startIndex)
                newS2.insert("%", at: newS2.endIndex)
            } else {
                return false
            }
        }
        
        return true
    }
}
