//
//  HouseRobberTests.swift
//  SwiftLeetcodeTests
//
//  Created by Varun Jandhyala on 8/29/18.
//  Copyright © 2018 varun. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class HouseRobberTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testOne() {
        let houses = [2,7,9,3,1]
        
        XCTAssert(HouseRobber().rob(houses) == 12)
    }
    
    func testTwo() {
        let houses = [1,2,3,1]
        
        XCTAssert(HouseRobber().rob(houses) == 4)
    }
    
    func testThree() {
        let houses = [1,3,1]
        
    XCTAssert(HouseRobber().rob(houses) == 3)
    }
    
    func testFour() {
        let houses = [1,2]
        
        XCTAssert(HouseRobber().rob(houses) == 2)
    }
    
    func testFive() {
        let houses = [2,1,1,2]
        
    XCTAssert(HouseRobber().rob(houses) == 4)
    }
    
    func testSix() {
        let houses = [1,3,1,3,100]
        
        XCTAssert(HouseRobber().rob(houses) == 103)
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
