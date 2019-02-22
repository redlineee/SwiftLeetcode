//
//  DetectCapital.swift
//  SwiftLeetcode
//
//  Created by Varun Jandhyala on 8/29/18.
//  Copyright © 2018 varun. All rights reserved.
//

import Foundation

/*
     https://leetcode.com/problems/detect-capital/
 
     Given a word, you need to judge whether the usage of capitals in it is right or not.
 
     We define the usage of capitals in a word to be right when one of the following cases holds:
 
     All letters in this word are capitals, like "USA".
     All letters in this word are not capitals, like "leetcode".
     Only the first letter in this word is capital if it has more than one letter, like "Google".
     Otherwise, we define that this word doesn't use capitals in a right way.
     Example 1:
 
     Input: "USA"
     Output: True
     Example 2:
 
     Input: "FlaG"
     Output: False
     Note: The input will be a non-empty word consisting of uppercase and lowercase latin letters.
 */

class DetectCapital {
    func isUppercase(_ word: String) -> Bool {
        return word.rangeOfCharacter(from: CharacterSet.uppercaseLetters.inverted) == nil
    }
    
    func isLowercase(_ word: String) -> Bool {
        return word.rangeOfCharacter(from: CharacterSet.lowercaseLetters.inverted) == nil
    }
    
    func isUppercaseChar(_ c: Character) -> Bool {
        return CharacterSet.uppercaseLetters.contains(c.unicodeScalars.first!)
    }
    
    func isLowercaseChar(_ c: Character) -> Bool {
        return CharacterSet.lowercaseLetters.contains(c.unicodeScalars.first!)
    }

    func detectCapitalUse(_ word: String) -> Bool {
        if word.isEmpty { return false }
        
        var uppercaseCount = 0
        var isFirstLetterUpper = isUppercaseChar(word.first!)
        
        
        for char in word {
            if isUppercaseChar(char) {
                uppercaseCount += 1
            }
        }
        
        // uppercaseCount == word.count (all uppercase)
        // uppercaseCount = 1, isFirstLetterUpper = true (proper cased)
        // uppercaseCount == 0 (all lowercase)
        
        if uppercaseCount == word.count {
            return true
        }
        
        if uppercaseCount == 1, isFirstLetterUpper {
            return true
        }
        
        if uppercaseCount == 0 {
            return true
        }
        
        return false
    }
}
