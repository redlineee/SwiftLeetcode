//
//  NonDecreasingArray.swift
//  SwiftLeetcode
//
//  Created by Varun Jandhyala on 8/27/18.
//  Copyright © 2018 varun. All rights reserved.
//

import Foundation

/*
     https://leetcode.com/problems/non-decreasing-array/
 
     Given an array with n integers, your task is to check if it could become non-decreasing by modifying at most 1 element.
 
     We define an array is non-decreasing if array[i] <= array[i + 1] holds for every i (1 <= i < n).
 
     Example 1:
 
     Input: [4,2,3]
     Output: True
     Explanation: You could modify the first 4 to 1 to get a non-decreasing array.
     Example 2:
 
     Input: [4,2,1]
     Output: False
     Explanation: You can't get a non-decreasing array by modify at most one element.
     Note: The n belongs to [1, 10,000].
 */

class NonDecreasingArray {
    func isNonDecreasing(_ nums: [Int]) -> Bool {
        for i in 0...nums.count - 2 {
            if !(nums[i] <= nums[i + 1]) {
                return false
            }
        }
        
        return true
    }

    func checkPossibility(_ nums: [Int]) -> Bool {
        if nums.count == 1 { return true }

        var testNums = nums
        var madeChange = false
        
        for i in 0...testNums.count - 2 {
            if testNums[i] > testNums[i + 1] {
                if madeChange { return false }
                
                // testNums[i] > testNums[i + 1]
                // [4,2,3] -> [2,2,3]
                // [2,3,3,2,4] -> [2,3,3,3,4]
                // If it is a middle element and the left element is greater than the right element [3,3,2] make the right element equal to current element [3,3,3]
                
                if i > 0 && testNums[i - 1] > testNums[i + 1] {
                    testNums[i + 1] = testNums[i]
                } else {
                    // We can set current element to the value of the right element
                    testNums[i] = testNums[i + 1]
                 }
                
                madeChange = true
            }
        }
        
        return true
    }
}
