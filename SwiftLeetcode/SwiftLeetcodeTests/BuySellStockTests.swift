//
//  BuySellStockTests.swift
//  SwiftLeetcodeTests
//
//  Created by Varun Jandhyala on 8/29/18.
//  Copyright © 2018 varun. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class BuySellStockTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testOne() {
        let prices = [7,1,5,3,6,4]
        
        XCTAssert(BuySellStock().maxProfit(prices) == 5)
    }
    
    func testTwo() {
        let prices = [7,6,4,3,1]
        
        XCTAssert(BuySellStock().maxProfit(prices) == 0)
    }
    
    func testThree() {
        let prices = [2,4,1]
        
        XCTAssert(BuySellStock().maxProfit(prices) == 2)
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
