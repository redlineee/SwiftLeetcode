//
//  SumOfSquareNumbers.swift
//  SwiftLeetcode
//
//  Created by Varun Jandhyala on 2/26/19.
//  Copyright © 2019 varun. All rights reserved.
//

import Foundation

/*
 https://leetcode.com/problems/sum-of-square-numbers/
 
 Given a non-negative integer c, your task is to decide whether there're two integers a and b such that a2 + b2 = c.
 
 Example 1:
 
 Input: 5
 Output: True
 Explanation: 1 * 1 + 2 * 2 = 5
 
 
 Example 2:
 
 Input: 3
 Output: False
 */

class SumOfSquareNumbers {
    func judgeSquareSum(_ c: Int) -> Bool {
        guard c > 1 else { return true }
        
        let root = Int(sqrt(Double(c)))
        
        for i in 0...root {
            let difference = sqrt(Double(c - (i * i)))
            
            if difference == Double(Int(difference)) {
                return true
            }
        }
        
        return false
    }
}
