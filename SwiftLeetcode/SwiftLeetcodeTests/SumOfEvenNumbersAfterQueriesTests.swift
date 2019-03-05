//
//  SumOfEvenNumbersAfterQueriesTests.swift
//  SwiftLeetcodeTests
//
//  Created by Varun Jandhyala on 3/1/19.
//  Copyright © 2019 varun. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class SumOfEvenNumbersAfterQueriesTests: XCTestCase {

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

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testOne() {
        XCTAssertEqual([8,6,2,4], SumOfEvenNumbersAfterQueries().sumEvenAfterQueries([1,2,3,4], [[1,0],[-3,1],[-4,0],[2,3]]))
    }

    func testTwo() {
        XCTAssertEqual([2, 12], SumOfEvenNumbersAfterQueries().sumEvenAfterQueries([3,2], [[4,0],[3,0]]))
    }
}
