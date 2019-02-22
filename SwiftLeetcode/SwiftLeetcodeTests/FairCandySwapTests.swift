//
//  FairCandySwapTests.swift
//  SwiftLeetcodeTests
//
//  Created by Varun Jandhyala on 8/20/18.
//  Copyright © 2018 varun. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class FairCandySwapTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test1() {
        let A = [1,1] , B = [2,2]
        
        XCTAssert(FairCandySwap().fairCandySwap(A,B) == [1,2])
    }
    
    func test2() {
        let A = [1,2,5] , B = [2,4]
        
        XCTAssert(FairCandySwap().fairCandySwap(A,B) == [5,4])
    }
    
    func test3() {
        let A = [2] , B = [1,3]
        
        XCTAssert(FairCandySwap().fairCandySwap(A,B) == [2,3])
    }
    
    func test4() {
        let A = [1,2] , B = [2,3]
        
        XCTAssert(FairCandySwap().fairCandySwap(A,B) == [1,2])
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
