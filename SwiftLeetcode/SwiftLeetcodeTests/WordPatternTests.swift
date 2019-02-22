//
//  WordPatternTests.swift
//  SwiftLeetcodeTests
//
//  Created by Varun Jandhyala on 8/13/18.
//  Copyright © 2018 varun. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode


class WordPatternTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPatterns() {
        let pattern = "abba"
        let stringWords = "cat dog dog cat"
        
        let wordPattern = WordPattern()
        wordPattern.wordPattern(pattern, stringWords)
    }
    
    func testOne() {
        let pattern = "abba"
        let str = "dog cat cat dog"
        let wordPattern = WordPattern()
        XCTAssert(wordPattern.wordPattern(pattern, str) == true)
    }
    
    func testTwo() {
        let pattern = "abba"
        let str = "dog cat cat fish"
        let wordPattern = WordPattern()
        XCTAssert(wordPattern.wordPattern(pattern, str) == false)
    }
    
    func testThree() {
        let pattern = "aaaa"
        let str = "dog cat cat dog"
        let wordPattern = WordPattern()
        XCTAssert(wordPattern.wordPattern(pattern, str) == false)
    }
    
    func testFour() {
        let pattern = "abba"
        let str = "dog dog dog dog"
        let wordPattern = WordPattern()
        XCTAssert(wordPattern.wordPattern(pattern, str) == false)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
