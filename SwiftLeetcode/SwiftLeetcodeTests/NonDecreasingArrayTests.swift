//
//  NonDecreasingArrayTests.swift
//  SwiftLeetcodeTests
//
//  Created by Varun Jandhyala on 8/27/18.
//  Copyright © 2018 varun. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class NonDecreasingArrayTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testOne() {
        let nums = [4,2,3]
        
        XCTAssertTrue(NonDecreasingArray().checkPossibility(nums))
    }
    
    func testTwo() {
        let nums = [4,2,1]
        
        XCTAssertFalse(NonDecreasingArray().checkPossibility(nums))
    }
    
    func testThree() {
        let nums = [1]
        
        XCTAssertTrue(NonDecreasingArray().checkPossibility(nums))
    }
    
    func testFour() {
        let nums = [1,5,4,6,7,10,8,9]
        
        XCTAssertFalse(NonDecreasingArray().checkPossibility(nums))
    }
    
    func testFive() {
        let nums = [2,3,3,2,4]
        XCTAssertTrue(NonDecreasingArray().checkPossibility(nums))
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
