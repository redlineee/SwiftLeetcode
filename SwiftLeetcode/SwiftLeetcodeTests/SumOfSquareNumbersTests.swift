//
//  SumOfSquareNumbersTests.swift
//  SwiftLeetcodeTests
//
//  Created by Varun Jandhyala on 2/26/19.
//  Copyright © 2019 varun. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class SumOfSquareNumbersTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func test2() {
        XCTAssertTrue(SumOfSquareNumbers().judgeSquareSum(2))
    }
    
    func test8() {
        XCTAssertTrue(SumOfSquareNumbers().judgeSquareSum(8))
    }
    
    func test5() {
        XCTAssertTrue(SumOfSquareNumbers().judgeSquareSum(5))
    }
    
    func test3() {
        XCTAssertFalse(SumOfSquareNumbers().judgeSquareSum(3))
    }
    
    func test10025() {
        XCTAssertTrue(SumOfSquareNumbers().judgeSquareSum(10025))
    }
    
    func test1000002() {
        XCTAssertFalse(SumOfSquareNumbers().judgeSquareSum(1000002))
    }
    
    func test2147482647() {
        XCTAssertFalse(SumOfSquareNumbers().judgeSquareSum(2147482647))
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
