//
//  ScoreOfParentheses.swift
//  SwiftLeetcode
//
//  Created by Varun Jandhyala on 8/13/18.
//  Copyright © 2018 varun. All rights reserved.
//

import Foundation
import UIKit

/*
     https://leetcode.com/problems/score-of-parentheses/
     
     Given a balanced parentheses string S, compute the score of the string based on the following rule:
     
     () has score 1
     AB has score A + B, where A and B are balanced parentheses strings.
     (A) has score 2 * A, where A is a balanced parentheses string.
 */

class ScoreOfParentheses {
/*
         iterate over characters in the string
     - if character is '('
     - increment counter
     - else
     - decrement counter (found closing ')')
     if character at prev index is '('
     - add 2^(counter) to score (adds 1 for single '()', adds proper multiple for nested '()')
     
     reached end of string, return score
 */
    
    func scoreOfParentheses(_ S: String) -> Int {
        var counter: Int = 0, score: Int = 0
        for (i, c) in S.enumerated() {
            if c == "(" {
                counter += 1
            } else {
                // Encountered ')'
                counter -= 1
                
                
                let previousIndex = S.index(S.startIndex, offsetBy: i - 1)
                if S[previousIndex] == "(" {
                    
                    score += NSDecimalNumber(decimal: pow(2.0, counter)).intValue
                }
            }
        }
        
        return score
    }
}
