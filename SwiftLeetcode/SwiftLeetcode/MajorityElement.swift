//
//  MajorityElement.swift
//  SwiftLeetcode
//
//  Created by Varun Jandhyala on 8/28/18.
//  Copyright © 2018 varun. All rights reserved.
//

import Foundation

/*
     https://leetcode.com/problems/majority-element/
 
     Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.
 
     You may assume that the array is non-empty and the majority element always exist in the array.
 
     Example 1:
 
     Input: [3,2,3]
     Output: 3
     Example 2:
 
     Input: [2,2,1,1,1,2,2]
     Output: 2
 */

class MajorityElement {
    func majorityElement(_ nums: [Int]) -> Int {
        if nums.count == 1 { return nums[0] }
        
        var testMajorityElement = nums[0]
        var majorityCount = 0
        
        for i in 0...nums.count - 1 {
        // if nums[0] is the correct majority element, it will have the biggest count at the end of the loop
        // If we encounter num[0] again, we increment count
        // Else, we decrement count and change testMajorityElement to the current index element
        // At the end, testMajorityElement is the answer
            if testMajorityElement == nums[i] {
                // increment
                majorityCount += 1
            } else {
                // decrement
                majorityCount -= 1
                if majorityCount <= 0 {
                // We have equal or more different elements to our testMajorityElement -> it cannot be the answer (n/2 or less occurrences)
                    testMajorityElement = nums[i]
                    majorityCount = 1
                }
            }
        }
        
        return testMajorityElement
    }
}
