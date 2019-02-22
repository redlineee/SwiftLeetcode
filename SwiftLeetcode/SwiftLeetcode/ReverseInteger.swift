//
//  ReverseInteger.swift
//  SwiftLeetcode
//
//  Created by Varun Jandhyala on 8/27/18.
//  Copyright © 2018 varun. All rights reserved.
//

import Foundation

/*
     https://leetcode.com/problems/reverse-integer/
     
     Given a 32-bit signed integer, reverse digits of an integer.
     
     Example 1:
     
     Input: 123
     Output: 321
     Example 2:
     
     Input: -123
     Output: -321
     Example 3:
     
     Input: 120
     Output: 21
     Note:
     Assume we are dealing with an environment which could only store integers within the 32-bit signed integer range: [−231,  231 − 1]. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.
 */

class ReverseInteger {
    func reverse(_ x: Int) -> Int {
        var tempX = x
        
        if x < 0 { tempX = -x}

        var reversedNumber = 0
        
        while tempX > 0 {
            let digit = tempX % 10
            let remainingNumber = tempX / 10
            
            reversedNumber = reversedNumber*10 + digit
            
            if reversedNumber > Int32.max {
                return 0
            }
            
            tempX = remainingNumber
        }
        
        if x < 0 {
            reversedNumber = -reversedNumber
        }
        
        return reversedNumber
    }
}
