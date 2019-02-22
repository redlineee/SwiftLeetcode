//
//  ReversePolishNotation.swift
//  SwiftLeetcode
//
//  Created by Varun Jandhyala on 7/29/18.
//  Copyright © 2018 varun. All rights reserved.
//

import Foundation
import UIKit

/*
     https://leetcode.com/problems/evaluate-reverse-polish-notation/
 
     Evaluate the value of an arithmetic expression in Reverse Polish Notation.
 
     Valid operators are +, -, *, /. Each operand may be an integer or another expression.
 
     Note:
     Division between two integers should truncate toward zero.
     The given RPN expression is always valid. That means the expression would always evaluate to a result and there won't be any divide by zero operation.
 */

class ReversePolishNotation {
    enum Operator: String {
        case plus = "+"
        case minus = "-"
        case divide = "/"
        case multiply = "*"
    }
    
    var expression: [String]
    
    typealias expressionNumbers = (left: Int, right: Int)
    
    init(expression: [String]) {
        self.expression = expression
    }
    
    func isOperator(_ element: String) -> Bool {
        return Operator(rawValue: element) != nil
    }

    func evaluateExpression(_ leftNum: Int, rightNum: Int, op: Operator) -> Int {
        switch op {
        case .plus: return leftNum + rightNum
        case .minus: return leftNum - rightNum
        case .divide: return leftNum / rightNum
        case .multiply: return leftNum * rightNum
        }
    }

    func solve() -> Int {
        var numStack: [Int] = []
        
        for elem in expression {
            
            if isOperator(elem) {
                let op = Operator(rawValue: elem)!
                let rightNum = numStack.popLast()!
                let leftNum = numStack.popLast()!
                
                numStack.append(evaluateExpression(leftNum, rightNum: rightNum, op: op))
            } else {
                numStack.append(Int(elem)!)
            }
        }
        return numStack[0]
    }
}
