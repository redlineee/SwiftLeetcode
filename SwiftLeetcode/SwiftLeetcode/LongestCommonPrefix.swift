//
//  LongestCommonPrefix.swift
//  SwiftLeetcode
//
//  Created by Varun Jandhyala on 8/23/18.
//  Copyright © 2018 varun. All rights reserved.
//

import Foundation

/*
    https://leetcode.com/problems/longest-common-prefix/
     
     Write a function to find the longest common prefix string amongst an array of strings.
     
     If there is no common prefix, return an empty string "".
     
     Example 1:
     
     Input: ["flower","flow","flight"]
     Output: "fl"
     Example 2:
     
     Input: ["dog","racecar","car"]
     Output: ""
     Explanation: There is no common prefix among the input strings.
     Note:
     
     All given inputs are in lowercase letters a-z.
 */

class LongestCommonPrefix {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var prefix = ""
        guard strs.count > 0 else { return prefix }

        if let shortest = strs.min() {
            for ch in shortest {
                let testPrefix = prefix + String(ch)

                if strs.lazy.filter({ $0.hasPrefix(testPrefix)}).count  == strs.count {
                    prefix = testPrefix
                } else {
                    break
                }
            }
        }

        return prefix
    }
}
