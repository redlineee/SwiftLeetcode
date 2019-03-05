//
//  FindTheTownJudge.swift
//  SwiftLeetcode
//
//  Created by Varun Jandhyala on 2/28/19.
//  Copyright © 2019 varun. All rights reserved.
//

import Foundation

/*
     https://leetcode.com/problems/find-the-town-judge/
 
     In a town, there are N people labelled from 1 to N.  There is a rumor that one of these people is secretly the town judge.
 
     If the town judge exists, then:
 
     The town judge trusts nobody.
     Everybody (except for the town judge) trusts the town judge.
     There is exactly one person that satisfies properties 1 and 2.
     You are given trust, an array of pairs trust[i] = [a, b] representing that the person labelled a trusts the person labelled b.
 
     If the town judge exists and can be identified, return the label of the town judge.  Otherwise, return -1.
 
 
 
     Example 1:
 
     Input: N = 2, trust = [[1,2]]
     Output: 2
     Example 2:
 
     Input: N = 3, trust = [[1,3],[2,3]]
     Output: 3
     Example 3:
 
     Input: N = 3, trust = [[1,3],[2,3],[3,1]]
     Output: -1
     Example 4:
 
     Input: N = 3, trust = [[1,2],[2,3]]
     Output: -1
     Example 5:
 
     Input: N = 4, trust = [[1,3],[1,4],[2,3],[2,4],[4,3]]
     Output: 3
 
 
     Note:
 
     1 <= N <= 1000
     trust.length <= 10000
     trust[i] are all different
     trust[i][0] != trust[i][1]
     1 <= trust[i][0], trust[i][1] <= N
 */

class FindTheTownJudge {
    func findJudge(_ N: Int, _ trust: [[Int]]) -> Int {
        guard trust.count > 0 else { return N }
        
        var helper: [Int : Int] = [:]
        
        for i in 0..<trust.count {
            let test = trust[i]
            
            if helper[test.last!] != nil {
                helper[test.last!]! += 1
            } else {
                helper[test.last!] = 1
            }
        }
        
        if let testTrustee = helper.filter({ $0.value == N - 1}).first {
            if trust.filter({ $0.first == testTrustee.key }).count == 0 {
                return testTrustee.key
            }
        }
        
        return -1
    }
}
