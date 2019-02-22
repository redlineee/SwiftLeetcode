//
//  ValidAnagram.swift
//  SwiftLeetcode
//
//  Created by Varun Jandhyala on 8/21/18.
//  Copyright © 2018 varun. All rights reserved.
//

import Foundation

/*
     https://leetcode.com/problems/valid-anagram/
 
     Given two strings s and t , write a function to determine if t is an anagram of s.
 
     Example 1:
 
     Input: s = "anagram", t = "nagaram"
     Output: true
     Example 2:
 
     Input: s = "rat", t = "car"
     Output: false
     Note:
     You may assume the string contains only lowercase alphabets.
 */

class ValidAnagram {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        // Is t anagram of s?
        /*
         - you get two strings s and t.
         -
         - first check that s and t have the same length
         - if they are of unequal length do the following
         -
         - let sum = 0
         - convert s into list of ascii values sChars.
         - sChars is a list of integers
         
         - similarly convert t into tChars, which is again a list of integers.
         
         - for n in 0..<length(s)
         -      sum += (sChars[n] - tChars[n])
         
         - after the for loop
         - if sum == 0, s and t are anagrams
         - otherwise they are not anagrams

    */
        
        guard s.count == t.count else {
            return false
        }
        
        var letters = [Int].init(repeating: 0, count: 26)
        for ch in s.unicodeScalars {
            // Values start at 97 so need the offset
            letters[Int(ch.value) - 97] += 1
        }
    
        for ch in t.unicodeScalars {
            letters[Int(ch.value) - 97] -= 1
        }
    
        return !letters.contains { $0 != 0 }
    }
}
