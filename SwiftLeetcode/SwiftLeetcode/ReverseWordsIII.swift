//
//  ReverseWordsIII.swift
//  SwiftLeetcode
//
//  Created by Varun Jandhyala on 8/28/18.
//  Copyright © 2018 varun. All rights reserved.
//

import Foundation

/*
     https://leetcode.com/problems/reverse-words-in-a-string-iii/
 
     Given a string, you need to reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order.
 
     Example 1:
     Input: "Let's take LeetCode contest"
     Output: "s'teL ekat edoCteeL tsetnoc"
     Note: In the string, each word is separated by single space and there will not be any extra space in the string.
 */

class ReverseWordsIII {
    func reverseWords(_ s: String) -> String {
        if s.isEmpty { return "" }
        
        var reversed = ""
        for c in s.components(separatedBy: " ") {
            reversed += String(c.characters.reversed()) + " "
        }
        
        reversed.unicodeScalars.removeLast()
        
        return reversed
    }
}
