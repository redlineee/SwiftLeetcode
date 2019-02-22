//
//  SwiftLeetcodeTests.swift
//  SwiftLeetcodeTests
//
//  Created by Varun Jandhyala on 7/29/18.
//  Copyright © 2018 varun. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class SwiftLeetcodeTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testBasic() {
        let expressionList = ["2", "2", "+"]
        let reversePolishNotation = ReversePolishNotation(expression: expressionList)
        XCTAssert(reversePolishNotation != nil)
    }
    
    func testEvaluate() {
        let expressionList = ["2", "10", "-"]
        let reversePolishNotation = ReversePolishNotation(expression: expressionList)
        XCTAssert(reversePolishNotation.solve() == -8)
    }
    
    func testComplexEvaluate() {
        let expressionList = ["2", "1", "+", "3", "*"]
        let expTwo = ["4", "13", "5", "/", "+"]
        let reversePolishNotation = ReversePolishNotation(expression: expressionList)
        
        let reversePolishNotation2 = ReversePolishNotation(expression: expTwo)

        XCTAssert(reversePolishNotation.solve() == 9)
        XCTAssert(reversePolishNotation2.solve() == 6)

    }
    
    func testMassiveEvaluate() {
        let expression = ["10", "6", "9", "3", "+", "-11", "*", "/", "*", "17", "+", "5", "+"]
        let reversePolishNotation = ReversePolishNotation(expression: expression)
        XCTAssert(reversePolishNotation.solve() == 22)        
    }
    
    func testIsOperator() {
        let op = "+"
        let op2 = "*"

        let nonop = "7"
        
        XCTAssertTrue(ReversePolishNotation(expression: [""]).isOperator(op))
        XCTAssertTrue(ReversePolishNotation(expression: [""]).isOperator(op2))

        XCTAssertFalse(ReversePolishNotation(expression: [""]).isOperator(nonop))
    }
    
    func testEvaluateExpression() {
        let expressionOne = ["2", "4", "+"]
        let expressionTwo = ["2", "6", "-"]

        let rpnOne = ReversePolishNotation(expression: expressionOne)
        
        let rpnTwo = ReversePolishNotation(expression: expressionOne)

        
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
