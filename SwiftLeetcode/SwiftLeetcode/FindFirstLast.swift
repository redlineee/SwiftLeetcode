//
//  FindFirstLast.swift
//  SwiftLeetcode
//
//  Created by Varun Jandhyala on 8/28/18.
//  Copyright © 2018 varun. All rights reserved.
//

import Foundation

/*
    https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/
 
     Given an array of integers nums sorted in ascending order, find the starting and ending position of a given target value.
 
     Your algorithm's runtime complexity must be in the order of O(log n).
 
     If the target is not found in the array, return [-1, -1].
 
     Example 1:
 
     Input: nums = [5,7,7,8,8,10], target = 8
     Output: [3,4]
     Example 2:
 
     Input: nums = [5,7,7,8,8,10], target = 6
     Output: [-1,-1]
 */

class FindFirstLast {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        if nums.isEmpty { return [-1, -1] }

        let filteredIndices = nums.indices.filter ({ nums[$0] == target }).sorted()

        if let first = filteredIndices.first {
            if filteredIndices.count == 1 {
                return [first, first]
            }

            if filteredIndices.count >= 2 {
                return [first, filteredIndices.last!]
            }
        }

        return [-1, -1]
    }
}
