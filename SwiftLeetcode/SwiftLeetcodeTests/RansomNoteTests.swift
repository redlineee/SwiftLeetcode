//
//  RansomNoteTests.swift
//  SwiftLeetcodeTests
//
//  Created by Varun Jandhyala on 8/23/18.
//  Copyright © 2018 varun. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class RansomNoteTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testOne() {
        XCTAssertFalse(RansomNote().canConstruct("a", "b"))
        XCTAssertFalse(RansomNote().canConstruct("aa", "ab"))
        XCTAssertTrue(RansomNote().canConstruct("aa", "aab"))
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
