//
//  SingleElementSortedArrayTests.swift
//  SwiftLeetcodeTests
//
//  Created by Varun Jandhyala on 8/13/18.
//  Copyright © 2018 varun. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class SingleElementSortedArrayTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testOne() {
        let nums = [1,1,2,3,3,4,4,8,8]
        let answer = SingleElementSortedArray().singleNonDuplicate(nums)
        XCTAssert(answer == 2)
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
