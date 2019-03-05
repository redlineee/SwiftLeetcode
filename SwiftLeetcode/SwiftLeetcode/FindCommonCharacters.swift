//
//  FindCommonCharacters.swift
//  SwiftLeetcode
//
//  Created by Varun Jandhyala on 3/4/19.
//  Copyright © 2019 varun. All rights reserved.
//

import Foundation

/*
     https://leetcode.com/problems/find-common-characters/
 
     Given an array A of strings made only from lowercase letters, return a list of all characters that show up in all strings within the list (including duplicates).  For example, if a character occurs 3 times in all strings but not 4 times, you need to include that character three times in the final answer.
 
     You may return the answer in any order.
 
 
 
     Example 1:
 
     Input: ["bella","label","roller"]
     Output: ["e","l","l"]
     Example 2:
 
     Input: ["cool","lock","cook"]
     Output: ["c","o"]
 
 
     Note:
 
     1 <= A.length <= 100
     1 <= A[i].length <= 100
     A[i][j] is a lowercase letter
 */

class FindCommonCharacters {
    func commonChars(_ A: [String]) -> [String] {
        guard A.count > 0 else { return [] }
        
        let sets = A.map { Set($0) }
        var commonSet = sets.first!

        for set in sets {
            commonSet = commonSet.intersection(set)
        }
        
        var answer: [String] = []

        for c in commonSet {
            var counts: Set<Int> = []

            for word in A {
                let count = word.filter({ $0 == c }).count

                counts.insert(count)
            }

            for _ in 0..<counts.min()! {
                answer.append(String(c))
            }
        }
        
        return answer
    }
}
