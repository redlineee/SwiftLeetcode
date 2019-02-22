//
//  RomanToIntegerTests.swift
//  SwiftLeetcodeTests
//
//  Created by Varun Jandhyala on 8/19/18.
//  Copyright © 2018 varun. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class RomanToIntegerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testI() {
        let rti = RomanToInteger()
        XCTAssertTrue(rti.romanToInt("I") == 1)
    }
    
    func testLVIII() {
        let roman = "LVIII"
        let rti = RomanToInteger()
        XCTAssertTrue(rti.romanToInt(roman) == 58)
    }
    
    func testIX() {
        let roman = "IX"
        let rti = RomanToInteger()
        XCTAssertTrue(rti.romanToInt(roman) == 9)
    }
    
    func testDCXXI() {
        let roman = "DCXXI"
        let rti = RomanToInteger()
        XCTAssertTrue(rti.romanToInt(roman) == 621)
    }
    
    func testMCMXCVI() {
        let roman = "MCMXCVI"
        let rti = RomanToInteger()
        self.measure {
            XCTAssertTrue(rti.romanToInt(roman) == 1996)
        }
    }
    
    func testBig() {
        let roman = "MCMXCIV"
        let rti = RomanToInteger()
        
        XCTAssertTrue(rti.romanToInt(roman) == 1994)
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