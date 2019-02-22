//
//  RansomNote.swift
//  SwiftLeetcode
//
//  Created by Varun Jandhyala on 8/23/18.
//  Copyright © 2018 varun. All rights reserved.
//

import Foundation

/*
     https://leetcode.com/problems/ransom-note/
 
     Given an arbitrary ransom note string and another string containing letters from all the magazines, write a function that will return true if the ransom note can be constructed from the magazines ; otherwise, it will return false.
 
     Each letter in the magazine string can only be used once in your ransom note.
 
     Note:
     You may assume that both strings contain only lowercase letters.
 
     canConstruct("a", "b") -> false
     canConstruct("aa", "ab") -> false
     canConstruct("aa", "aab") -> true
 */

class RansomNote {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        // If magazine contains every character in ransomNote we have our answer
        // Ransom Note must be shorter than or equal than Magazine to be true
        guard ransomNote.count <= magazine.count else { return false }
        
        var alphabetArray = [Int].init(repeating: 0, count: 26)
        var count = 0
        
        // Add letters from ransomNote to alphabetArray, incrementing count for each letter
        for r in ransomNote.unicodeScalars {
            alphabetArray[Int(r.value) - 97] += 1
            count += 1
        }
        
        // Remove letters from magazine already in alphabetArray, decrementing count for each letter found
        for m in magazine.unicodeScalars {
            if alphabetArray[Int(m.value) - 97]  > 0 {
                // valid existing letter from ransomNote
                alphabetArray[Int(m.value) - 97] -= 1
                count -= 1
            }
            
            // If count == 0, we have a match
            if count == 0 { break }
        }
        
        return count == 0
    }
}
