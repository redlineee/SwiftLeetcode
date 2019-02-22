//
//  FindComplementTests.swift
//  SwiftLeetcodeTests
//
//  Created by Varun Jandhyala on 8/20/18.
//  Copyright © 2018 varun. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class FindComplementTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testBasic() {
        let number = 5
        XCTAssertTrue(FindComplement().findComplement(number) == 2)
    }
    
    func testBasic2() {
        let number = 1
        XCTAssertTrue(FindComplement().findComplement(number) == 0)
    }
    
    func testBasic3() {
        let number = 11
        XCTAssertTrue(FindComplement().findComplement(number) == 4)
    }
    
    func testBasic4() {
        let number = 4
        XCTAssertTrue(FindComplement().findComplement(number) == 3)
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
