//
//  SingleElementSortedArray.swift
//  SwiftLeetcode
//
//  Created by Varun Jandhyala on 8/13/18.
//  Copyright © 2018 varun. All rights reserved.
//

import Foundation
import UIKit

/*
     https://leetcode.com/problems/single-element-in-a-sorted-array/
     
     Given a sorted array consisting of only integers where every element appears twice except for one element which appears once. Find this single element that appears only once.
     
     Example 1:
     
     Input: [1,1,2,3,3,4,4,8,8]
     Output: 2
     Example 2:
     
     Input: [3,3,7,7,10,11,11]
     Output: 10
     Note: Your solution should run in O(log n) time and O(1) space.
 */

class SingleElementSortedArray {
    func singleNonDuplicate(_ nums: [Int]) -> Int {
        return nums.reduce(into: [:]) { $0[$1, default: 0] += 1 }.first(where: { $1 == 1 })!.key
    }
}
