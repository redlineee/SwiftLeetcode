//
//  FindComplement.swift
//  SwiftLeetcode
//
//  Created by Varun Jandhyala on 8/20/18.
//  Copyright © 2018 varun. All rights reserved.
//

import Foundation

/*
    https://leetcode.com/problems/number-complement/
     
     Given a positive integer, output its complement number. The complement strategy is to flip the bits of its binary representation.
     
     Note:
     
     The given integer is guaranteed to fit within the range of a 32-bit signed integer.
     You could assume no leading zero bit in the integer’s binary representation.
     Example 1:
     
     Input: 5
     Output: 2
     Explanation: The binary representation of 5 is 101 (no leading zero bits), and its complement is 010. So you need to output 2.
     Example 2:
     
     Input: 1
     Output: 0
     Explanation: The binary representation of 1 is 1 (no leading zero bits), and its complement is 0. So you need to output 0.
 */

class FindComplement {
    func invert(_ i: Character) -> Character {
        return i == "0" ? "1" : "0"
    }
    func findComplement(_ num: Int) -> Int {
        let invertedBinary = String(num, radix: 2).map { invert($0) }
        return Int(String(invertedBinary), radix: 2)!
    }
}
