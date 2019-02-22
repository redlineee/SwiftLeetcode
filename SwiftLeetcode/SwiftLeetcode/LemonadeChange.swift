//
//  LemonadeChange.swift
//  SwiftLeetcode
//
//  Created by Varun Jandhyala on 8/14/18.
//  Copyright © 2018 varun. All rights reserved.
//

import Foundation

/*
     https://leetcode.com/problems/lemonade-change/
 
     At a lemonade stand, each lemonade costs $5.
 
     Customers are standing in a queue to buy from you, and order one at a time (in the order specified by bills).
 
     Each customer will only buy one lemonade and pay with either a $5, $10, or $20 bill.  You must provide the correct change to each customer, so that the net transaction is that the customer pays $5.
 
     Note that you don't have any change in hand at first.
 
     Return true if and only if you can provide every customer with correct change.
 */

class LemonadeChange {
    /*
     Add bill to change list
     if bill > 5
     bill = 10: check for 5
     bill = 20: check for 10, 5
     
     else return true
     */
    
    func lemonadeChange(_ bills: [Int]) -> Bool {
        var fiveCount = 0, tenCount = 0
        
        for bill in bills {
            switch bill {
            case 5:
                fiveCount += 1
                
            case 10:
                tenCount += 1
                if fiveCount < 1 { return false }
                fiveCount -= 1

            case 20:
                if fiveCount < 1 { return false }
                
                if tenCount < 1, fiveCount < 3 { return false }
                
                if tenCount >= 1 {
                    tenCount -= 1
                    fiveCount -= 1
                } else {
                    fiveCount -= 3
                }
                
            default: break
            }
        }
        
        return true
    }
}
