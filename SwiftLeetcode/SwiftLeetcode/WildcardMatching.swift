//
//  WildcardMatching.swift
//  SwiftLeetcode
//
//  Created by Varun Jandhyala on 7/31/18.
//  Copyright © 2018 varun. All rights reserved.
//

import Foundation

/*
     https://leetcode.com/problems/wildcard-matching/
 
     Given an input string (s) and a pattern (p), implement wildcard pattern matching with support for '?' and '*'.
 
     '?' Matches any single character.
     '*' Matches any sequence of characters (including the empty sequence).
     The matching should cover the entire input string (not partial).
 
     Note:
 
     s could be empty and contains only lowercase letters a-z.
     p could be empty and contains only lowercase letters a-z, and characters like ? or *.
 */

class WildcardMatching {
    func isMatch(_ s: String, _ p: String) -> Bool {
        var stringCharacterIndex: String.Index = s.startIndex
        var patternCharacterIndex: String.Index = p.startIndex
        
        var stringStarIndex: String.Index? = nil
        var patternStarIndex: String.Index? = nil
        
        var numberOfStarMatches = 0

        // Iterate over the string (s)
        while stringCharacterIndex < s.endIndex {

            if patternCharacterIndex < p.endIndex, s[stringCharacterIndex] == p[patternCharacterIndex] || p[patternCharacterIndex] == "?" {
                // Character match or '?' match, advance string pointer and pattern pointer
                stringCharacterIndex = s.index(stringCharacterIndex, offsetBy: 1)
                patternCharacterIndex = p.index(patternCharacterIndex, offsetBy: 1)
            }

            else if patternCharacterIndex < p.endIndex, p[patternCharacterIndex] == "*" {
                // '*' character, store star indices and advance pattern pointer
                numberOfStarMatches = 0
                
                stringStarIndex = stringCharacterIndex
                patternStarIndex = patternCharacterIndex
                
                patternCharacterIndex = p.index(patternCharacterIndex, offsetBy: 1)
            }

            else if stringStarIndex != nil {
                // Previously found a '*' character, increment numberOfStarMatches, advance string pointer by numberOfStarMatches and pattern pointer past '*' character
                numberOfStarMatches += 1
                
                stringCharacterIndex = s.index(stringStarIndex!, offsetBy: numberOfStarMatches)
                patternCharacterIndex = p.index(patternStarIndex!, offsetBy: 1)
            }
            else {
                // Not a match
                return false
            }
        }

        // Done with string characters

        // Iterate over remaining pattern characters and check for '*' characters
        while patternCharacterIndex < p.endIndex {
            if p[patternCharacterIndex] != "*" {
                // pattern doesn't end in '*' return false
                return false
            }
            patternCharacterIndex = p.index(patternCharacterIndex, offsetBy: 1)
        }

        // Pattern does end in '*' return true
        return true
    }
}
