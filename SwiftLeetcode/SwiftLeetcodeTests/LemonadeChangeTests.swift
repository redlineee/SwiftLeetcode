//
//  LemonadeChangeTests.swift
//  SwiftLeetcodeTests
//
//  Created by Varun Jandhyala on 8/14/18.
//  Copyright © 2018 varun. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class LemonadeChangeTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testChange() {
        let bills = [5]
        XCTAssertTrue(LemonadeChange().lemonadeChange(bills))
    }
    
    func test2Change() {
        let bills = [5,5,10,10,20]
        
        XCTAssertFalse(LemonadeChange().lemonadeChange(bills))
    }
    
    func test3Change() {
        let bills = [5,5,5,10,20]
        
        XCTAssertTrue(LemonadeChange().lemonadeChange(bills))
    }
    
    func testMassiveChange() {
        let bills = [5,5,10,20,5,5,5,5,5,5,5,5,5,10,5,5,20,5,20,5]
        XCTAssertTrue(LemonadeChange().lemonadeChange(bills))
    }
    
    func testAstronomicalChange() {
        let bills = [5,5,5,5,5,5,5,5,5,5,5,20,5,10,10,5,10,10,20,5,5,10,10,5,5,10,5,5,5,5,5,5,5,5,5,20,5,5,10,5,5,5,10,5,10,20,5,5,10,10,5,5,20,5,5,5,20,5,5,10,5,20,5,5,5,5,5,10,5,20,20,5,20,20,5,5,20,10,5,5,5,5,5,20,5,5,5,5,5,20,10,5,5,5,10,5,10,20,20,10,5,5,5,5,10,5,5,5,5,5,10,5,5,5,20,10,20,5,5,20,5,5,20,5,10,20,5,5,5,5,10,5,10,10,10,5,20,5,5,5,5,5,10,20,5,20,5,5,20,5,20,10,5,10,5,5,5,5,5,20,10,5,10,5,5,5,5,20,5,5,20,10,5,5,5,20,5,10,20,5,5,20,20,5,5,5,20,5,5,10,20,5,5,20,10,5,20,20,20,10,5,5,5,5,5,20,10,5,5,5,20,5,10,20,5,20,20,5,10,5,20,5,20,10,20,10,20,5,20,5,5,5,5,5,5,5,10,10,5,10,10,10,5,20,5,20,5,20,10,5,5,20,20,10,10,10,5,20,5,5,5,20,10,5,20,5,10,5,5,20,10,5,10,5,10,10,10,5,5,10,5,5,5,10,5,5,20,5,5,5,5,20,20,20,5,5,5,5,5,10,5,5,5,10,5,5,5,5,20,20,5,20,20,5,10,5,5,20,10,5,20,5,20,5,10,5,5,5,5,20,5,5,5,5,10,20,20,5,5,20,5,5,10,20,5,20,5,5,5,5,5,10,20,5,5,5,10,5,5,5,5,20,5,10,10,20,5,10,5,5,20,10,10,20,5,20,5,5,10,5,20,5,5,5,5,20,5,5,5,10,5,20,5,5,5,20,5,5,20,5,20,20,5,10,5,5,5,10,20,20,5,20,5,10,5,5,5,10,5,20,5,20,5,5,5,10,20,5,5,20,5,5,10,20,5,10,20,20,5,5,20,10,5,5,5,10,5,5,10,5,20,20,5,20,20,5,10,5,5,5,10,5,5,10,5,5,5,5,5,5,5,10,10,20,5,5,5,10,5,10,5,5,5,5,20,5,20,5,20,20,5,20,20,10,5,5,5,20,5,20,10,10,5,5,5,5,5,20,5,10,10,5,20,10,5,5,5,10,5,10,5,10,5,5,5,20,5,5,5,20,5,10,5,20,5,5,20,5,5,20,5,5,5,10,5,10,20,20,5,5,5,5,10,10,10,5,5,5,5,20,5,5,5,10,5,10,5,5,5,20,10,20,5,5,5,20,5,20,10,20,20,5,5,5,5,10,5,5,20,5,10,10,20,20,5,10,5,5,20,5,20,5,5,5,5,5,5,10,5,5,20,5,5,5,5,5,20,5,5,5,10,5,5,20,10,5,20,5,20,5,5,10,10,5,5,5,5,5,10,5,5,5,5,5,10,10,20,10,5,5,5,5,20,5,10,10,5,10,20,20,5,10,10,5,5,20,5,5,10,5,5,10,5,5,5,5,10,5,5,5,5,5,20,10,5,10,5,20,5,20,20,5,5,5,10,5,20,5,5,5,5,10,5,20,5,5,5,5,10,5,10,10,5,20,5,20,5,20,10,5,20,5,5,5,5,5,5,5,10,5,20,5,5,5,5,5,20,5,5,5,20,5,5,5,5,5,20,5,10,5,5,5,5,20,20,5,5,10,10,10,5,20,5,10,5,5,10,5,10,20,5,20,5,10,10,5,5,5,20,10,10,5,5,20,5,5,5,5,5,5,5,10,10,10,5,5,20,5,5,5,20,5,5,5,20,5,5,5,5,5,20,20,5,5,10,20,20,20,20,5,5,5,10,10,5,20,5,5,5,5,10,5,20,20,10,5,5,5,20,20,20,5,10,20,5,10,5,5,20,10,20,5,5,5,20,5,5,5,5,5,5,10,10,5,5,5,20,20,5,20,10,5,5,10,10,5,5,10,5,5,10,5,5,5,10,20,20,5,5,20,5,10,5,20,10,5,5,20,5,10,10,20,20,20,20,5,5,5,5,5,10,5,5,5,5,5,5,5,5,5,10,20,20,20,10,5,20,5,5,5,5,20,20,5,20,20,5,10,5,20,10,5,5,5,5,5,10,20,5,10,5,20,10,5,10,10,5,5,10,5,5,5,5,20,20,10,5,10,10,5,10,5,5,5,5,5,5,5,20,5,20,5,5,5,20,5,20,5,20,20,5,5,5,5,5,20,5,10,5,20,10,5,5,5,10,10,5,20,5,20,5,20,20,5,5,5,20,5,5,5,5,10,5,10,20,5,5,5,5,10,5,5,10,10,10,20,5,5,20,10,20,5,5,20,10,10,5,5,5,5,20,10,5,5,20,5,5,20,5,5,20,5,20,5,5,5,10,10,10,20,5,5,10,5,10,5,5,5,5,20,5,10,5,5,5,10,5,10,10,5,10,20,20,10,5,10,5,20,5,5,5,5,10,20,20,20,5,5,5,5,5,5,5,5,5,20,10,5,5,5,5,5,10,5,5,10,5,10,5,5,5,10,5,5,10,5,5,5,5,10,5,10,5,5,20,20,5,5,5,5,10,5,5,20,20,5,10,10,5,20,5,5,5,5,5,5,5,5,5,5,5,10,5,5,5,5,5,5,20,20,5,5,20,5,5,20,10,5,10,10,10,5,5,10,5,5,5,20,10,10,5,5,10,10,20,5,10,5,5,5,20,5,10,20,5,20,20,10,10,5,20,10,20,5,5,5,5,5,5,5,20,5,5,20,5,10,20,20,5,5,5,5,5,5,5,5,10,10,5,5,5,5,5,5,20,10,5,5,5,5,5,10,20,20,5,5,10,5,5,20,5,10,5,5,5,5,10,10,10,20,5,5,5,5,5,5,5,5,5,5,5,10,5,10,5,10,20,5,20,5,20,10,5,5,5,5,20,5,20,10,10,5,5,5,20,10,5,5,20,5,5,5,5,5,5,5,5,10,5,5,5,20,5,10,5,10,20,5,20,20,20,5,5,5,20,20,20,5,20,5,5,5,5,5,20,20,5,5,5,10,20,10,5,5,5,5,20,5,5,5,5,5,5,5,20,10,5,5,5,10,5,10,20,5,5,5,5,5,10,5,5,20,5,10,5,5,5,5,10,5,10,5,5,5,5,5,5,10,5,5,5,5,5,5,10,5,5,5,5,5,20,5,5,5,20,20,5,5,10,20,5,20,5,5,5,5,20,5,20,5,5,10,5,5,5,20,5,20,5,20,20,5,5,5,20,5,5,20,5,5,10,20,5,5,20,5,5,5,5,10,20,5,5,5,10,20,5,5,5,5,5,5,20,5,5,20,5,5,20,5,5,5,20,20,10,5,5,5,20,20,5,5,5,5,5,10,20,20,10,5,20,5,10,20,5,5,10,20,5,20,10,5,5,5,5,5,10,5,5,5,20,20,5,5,20,20,20,20,5,5,5,20,10,20,5,20,10,10,5,10,5,5,5,10,20,10,5,10,5,20,5,20,10,5,20,10,5,5,5,5,10,5,5,5,5,5,5,5,5,5,20,20,20,5,20,5,5,5,5,5,5,10,20,10,20,5,10,20,5,5,10,5,5,10,5,5,5,10,20,5,5,20,10,5,5,5,5,5,10,5,5,5,5,20,5,5,5,10,5,10,5,20,5,5,5,20,20,5,10,20,5,5,5,5,5,5,5,20,10,20,10,5,20,5,20,5,20,10,5,20,10,5,5,5,5,20,20,5,5,5,5,5,10,5,5,20,5,20,5,10,5,5,20,5,5,5,20,20,5,5,10,5,5,5,5,10,10,5,5,5,5,5,5,5,10,5,5,5,5,5,5,10,20,5,5,5,20,20,10,10,5,5,5,5,10,5,10,10,10,20,10,10,20,10,5,10,20,5,5,5,5,5,5,5,5,10,20,20,10,5,5,5,5,5,5,5,5,10,10,20,5,5,20,5,5,5,5,5,10,5,5,10,20,20,5,5,5,5,5,20,5,5,10,5,5,5,5,10,5,5,5,5,5,5,20,5,5,5,5,10,10,5,5,5,10,5,5,20,20,20,20,5,5,20,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,10,5,5,5,5,5,20,20,5,5,20,5,20,5,5,20,5,5,10,5,5,10,5,20,5,5,5,5,5,10,5,5,5,5,5,10,5,20,5,5,20,20,5,5,5,10,5,10,5,5,20,20,10,10,20,20,20,5,10,5,5,5,20,20,5,5,5,5,10,5,10,10,5,5,5,10,5,10,5,5,5,5,10,5,5,5,5,5,5,10,10,10,10,5,5,20,20,5,10,20,5,20,5,10,5,5,10,10,5,10,5,20,5,5,5,10,5,5,5,10,5,5,5,20,20,20,5,20,20,5,10,5,20,10,10,5,5,5,20,10,20,5,20,5,20,5,5,5,5,5,10,5,10,10,5,10,5,5,5,20,10,5,5,5,20,5,5,10,10,5,5,5,5,20,5,5,5,10,5,5,5,5,5,5,20,5,20,5,5,10,20,5,10,20,5,5,10,5,5,20,5,20,5,5,10,5,5,5,20,20,5,5,5,10,5,20,5,5,20,5,5,5,5,5,10,5,10,5,5,20,5,5,5,5,10,10,10,5,5,5,5,5,5,5,5,5,5,5,20,20,5,20,5,10,5,5,5,5,5,5,5,5,5,5,5,20,10,5,5,10,5,5,5,10,5,5,5,10,5,5,10,10,10,20,20,5,10,5,20,10,5,20,5,10,10,5,5,5,10,10,20,5,5,5,10,5,5,5,5,5,20,5,5,5,10,20,20,20,5,10,5,10,10,5,5,20,10,5,5,5,5,20,5,5,5,5,10,5,10,10,5,5,10,20,20,20,20,5,5,5,5,10,5,20,5,5,10,5,5,5,5,5,5,5,10,5,5,5,5,20,20,20,5,5,20,10,5,20,5,20,5,5,5,5,10,5,5,5,5,5,10,5,5,10,5,10,5,5,10,5,20,5,5,5,5,10,5,5,10,20,5,20,10,20,10,10,10,5,5,5,10,5,5,5,5,5,10,5,5,5,20,5,5,5,5,20,10,10,5,5,10,20,20,10,5,5,5,10,5,5,5,20,5,10,5,10,5,10,20,5,20,10,5,5,5,10,5,10,5,5,5,10,20,10,5,5,5,20,5,10,10,5,5,5,5,5,10,5,10,5,5,5,20,5,5,10,5,5,5,5,5,20,10,5,10,5,5,10,5,10,10,20,5,5,10,5,5,5,5,5,5,10,10,5,10,20,10,5,10,5,10,10,5,5,10,20,5,10,5,10,5,10,5,20,5,10,5,10,5,5,5,10,5,5,5,5,10,10,5,20,20,10,5,10,20,5,10,5,20,5,10,5,5,5,5,20,20,5,5,10,20,5,10,20,10,5,20,5,20,5,5,5,10,5,10,5,20,5,5,10,20,20,10,5,5,10,10,10,5,10,5,10,5,5,5,5,20,10,10,10,5,10,5,5,10,5,20,5,5,5,5,5,5,20,5,5,5,5,10,5,5,5,10,10,5,5,5,5,5,5,5,10,5,10,10,5,5,5,5,20,5,5,20,5,20,10,10,5,10,20,5,5,5,5,5,5,5,5,5,10,5,10,10,5,5,5,5,10,5,5,20,5,20,10,5,5,20,5,20,10,5,20,5,5,5,20,10,5,20,20,5,20,10,5,5,10,20,10,5,5,10,5,10,10,5,5,5,20,5,5,5,5,10,5,10,5,20,5,10,10,5,20,10,5,5,5,5,5,5,5,10,10,10,5,20,5,5,10,10,5,5,10,5,5,20,5,5,5,5,5,5,10,5,10,20,5,5,5,20,5,5,20,20,10,5,20,10,5,5,5,5,10,5,10,5,5,10,5,5,5,5,5,5,5,5,20,5,5,5,10,10,20,20,5,10,10,10,5,5,5,5,5,5,5,10,5,5,5,10,5,20,20,5,20,5,20,5,5,5,5,5,5,20,20,5,20,10,5,10,5,5,5,10,5,20,10,5,10,5,5,5,20,5,5,20,5,20,5,10,5,5,5,5,20,5,10,10,5,5,10,5,20,5,5,5,5,20,10,5,10,20,5,20,5,20,5,5,20,5,5,5,5,5,10,5,10,5,5,5,5,5,10,20,10,5,5,5,20,20,5,5,5,10,10,5,10,10,20,10,5,20,10,10,20,5,5,10,10,5,5,10,5,5,20,10,5,10,5,5,5,10,20,20,5,5,10,20,5,20,5,10,10,5,20,5,5,5,5,5,5,20,5,10,10,20,5,5,5,5,10,5,5,5,5,10,5,10,20,20,10,20,5,10,10,5,5,5,5,20,10,5,20,20,5,10,5,20,5,5,20,5,20,5,10,20,10,20,5,5,5,10,10,5,20,10,20,10,5,5,5,20,20,20,5,5,5,5,5,10,10,5,10,5,5,5,10,20,20,10,10,10,5,5,5,5,5,5,20,5,10,5,10,5,20,20,5,5,5,5,5,5,10,5,20,5,5,20,10,10,5,5,5,5,5,10,5,5,10,5,5,5,5,5,5,5,5,5,5,10,5,10,5,5,5,10,5,10,5,5,5,5,5,5,5,10,10,5,5,20,20,10,5,10,5,10,20,10,10,10,20,10,20,10,5,10,5,20,5,5,5,5,5,10,5,5,10,5,10,20,20,5,10,20,5,5,5,5,10,20,5,5,20,5,5,5,5,10,5,5,5,10,20,5,10,5,5,5,10,20,20,5,5,5,5,20,5,10,5,5,10,5,20,20,5,5,20,5,20,5,20,10,5,5,5,10,5,10,10,5,5,10,5,5,5,5,5,20,5,20,5,5,5,5,10,5,5,5,10,20,5,10,10,5,5,20,5,20,10,5,5,20,5,20,5,5,20,5,5,5,20,10,20,10,5,20,10,5,5,5,5,5,5,20,5,20,5,20,20,5,10,5,5,20,5,5,5,10,10,5,5,20,5,5,20,10,10,10,5,5,5,5,20,10,5,20,5,20,20,20,10,5,5,5,10,10,20,10,5,5,10,5,5,5,5,10,20,5,5,5,5,5,5,5,20,5,20,5,20,20,5,20,10,20,10,5,5,5,5,20,5,10,10,20,10,10,10,5,5,5,5,5,5,5,5,20,5,10,5,5,5,10,10,10,20,5,5,5,20,5,5,5,5,5,5,10,10,5,20,10,5,5,5,5,20,5,20,10,5,5,5,20,20,10,5,20,5,20,5,5,20,10,20,20,5,20,20,5,5,10,5,5,20,20,5,10,20,5,5,20,20,5,10,20,10,5,20,5,5,20,5,10,5,10,5,20,5,5,5,10,5,5,5,5,5,10,20,20,10,10,5,5,5,5,5,5,5,20,5,5,5,5,20,5,5,10,20,5,20,5,5,5,5,10,5,5,5,5,5,20,5,5,5,5,10,5,5,10,5,5,20,5,5,20,20,5,5,5,5,10,20,5,5,5,10,5,10,20,10,20,5,10,5,5,20,5,10,5,5,20,10,5,5,5,20,10,5,20,5,5,5,5,5,20,5,5,20,5,10,20,5,20,5,20,5,10,10,5,20,5,5,10,5,5,20,5,10,5,10,5,5,5,20,10,5,5,10,5,10,5,20,5,5,10,5,20,5,20,10,5,10,5,5,5,5,5,5,5,5,5,5,10,10,10,5,20,5,5,5,5,10,10,5,5,5,10,5,20,20,10,5,5,5,5,5,10,5,20,5,5,5,20,5,5,20,10,5,10,5,20,10,5,5,5,5,5,5,5,10,10,5,5,5,10,20,5,5,5,5,5,20,10,5,10,5,5,20,5,10,20,20,5,10,5,5,5,20,20,10,5,5,5,5,5,10,20,20,5,5,5,5,10,5,5,5,5,10,5,5,5,20,10,10,10,5,5,5,10,5,20,5,5,20,10,5,10,10,5,10,5,20,5,5,5,20,5,5,10,5,5,5,20,5,10,10,10,5,20,20,5,10,5,20,5,5,5,5,5,5,5,5,10,5,5,10,10,5,10,5,5,10,5,5,5,5,20,5,20,20,20,5,5,5,5,5,20,5,10,5,10,5,5,20,5,20,5,5,20,20,5,10,5,5,5,5,5,20,5,5,5,5,5,20,5,10,5,20,5,5,20,20,5,5,20,5,10,5,5,10,5,10,5,5,5,20,5,5,20,5,20,20,20,10,5,20,20,5,5,5,5,5,5,5,20,5,5,5,5,5,5,5,10,5,5,10,10,10,5,5,10,10,5,20,10,5,5,10,10,5,20,5,5,5,5,20,5,5,5,5,5,5,5,20,20,10,10,20,5,5,20,20,5,5,5,5,20,5,5,5,10,5,20,5,20,5,10,5,10,5,5,20,5,5,10,5,10,10,10,20,10,20,20,10,5,20,5,5,20,5,5,10,20,5,5,5,10,5,5,20,5,5,5,5,10,10,10,5,10,20,20,5,5,10,5,5,5,10,5,5,20,5,20,5,5,10,5,10,20,10,5,20,5,5,5,20,5,5,5,5,10,20,5,20,20,10,5,5,5,5,5,5,20,10,5,10,5,5,5,5,5,5,20,5,20,10,5,5,5,10,5,20,5,5,5,5,5,5,5,5,5,5,5,10,5,5,20,5,5,5,5,10,20,20,20,10,5,5,5,5,5,5,20,5,10,5,10,5,5,5,5,5,5,5,5,5,5,5,20,10,10,5,10,5,5,10,20,5,20,20,5,10,5,5,10,5,5,5,5,5,20,10,10,5,5,5,10,5,5,5,5,20,5,10,5,20,5,20,5,20,20,20,5,20,5,5,5,10,10,5,5,5,5,5,5,5,10,5,20,5,5,5,5,5,20,5,10,5,10,5,20,20,5,10,10,5,10,5,5,5,20,5,10,20,10,10,5,10,5,5,5,5,5,5,5,20,10,5,5,20,20,20,20,5,5,10,20,20,20,5,20,5,10,10,10,5,20,20,10,5,5,20,5,20,5,5,10,20,5,5,20,5,5,5,20,10,5,5,20,20,5,5,10,10,5,10,5,20,5,5,5,5,5,20,5,10,5,5,5,5,5,20,5,5,5,5,5,20,5,10,5,20,5,20,5,5,5,5,5,5,5,5,20,5,5,20,5,5,10,5,20,20,5,20,5,20,10,5,5,10,5,5,5,5,10,5,10,10,5,5,10,20,5,5,20,20,5,5,10,5,5,5,5,5,10,5,5,5,5,10,20,5,20,20,20,20,5,5,5,10,5,5,5,20,5,5,5,20,5,5,20,5,5,10,5,5,10,20,20,5,5,5,5,10,5,5,5,5,5,10,20,10,20,20,5,5,5,5,5,5,20,10,10,5,10,5,20,5,10,10,5,20,20,20,5,10,5,5,10,5,5,10,5,5,5,20,10,10,20,5,20,5,20,5,5,5,10,5,5,20,5,10,5,5,10,10,10,20,5,10,5,20,5,5,20,10,5,5,5,5,5,5,5,10,5,5,5,5,10,5,20,10,5,10,5,5,5,5,20,10,10,5,5,5,5,20,5,20,20,10,10,5,10,5,10,5,5,5,5,10,5,5,5,20,10,5,5,5,5,5,20,5,20,5,5,5,5,20,5,5,5,5,20,10,20,5,20,5,5,20,5,5,10,5,10,20,5,5,5,20,10,10,10,5,10,20,20,5,10,5,5,20,5,10,5,5,5,5,5,5,5,5,5,5,10,5,5,5,5,10,5,5,5,5,5,5,5,5,5,5,5,10,5,10,5,5,5,20,5,5,5,5,5,5,5,20,20,5,5,10,5,20,20,5,5,5,10,5,5,5,10,20,10,5,5,5,5,5,10,10,5,5,5,5,10,5,5,10,20,20,5,20,5,5,5,10,5,10,5,5,20,20,5,5,5,20,5,20,5,5,5,5,5,5,10,10,20,5,10,5,10,5,5,20,20,5,5,10,5,5,5,5,20,20,10,10,5,5,5,20,20,20,5,10,5,20,5,20,20,10,5,5,20,5,5,5,5,5,5,20,5,5,5,5,5,5,20,5,20,20,5,5,20,5,5,5,10,5,10,5,5,5,10,10,5,5,10,5,5,10,5,5,5,10,10,5,10,5,20,5,5,20,5,20,5,5,5,20,10,5,10,5,5,5,5,5,10,5,5,5,5,5,10,20,5,5,5,5,5,5,10,10,5,5,5,10,10,20,5,5,5,20,5,5,10,5,5,5,5,5,10,5,5,5,5,5,20,20,20,10,20,10,10,5,5,5,5,10,20,10,10,5,10,5,20,5,5,5,10,20,20,5,20,5,5,10,5,20,5,5,5,5,20,20,5,10,20,20,5,10,20,5,20,5,5,5,5,20,10,5,20,5,10,20,5,5,10,5,5,5,5,10,5,20,5,5,5,10,5,20,5,5,10,5,5,5,5,5,20,20,5,5,5,5,10,5,10,20,5,5,20,5,5,20,5,20,20,5,5,5,5,5,5,5,10,20,5,20,5,5,20,5,5,20,5,5,10,20,5,5,20,20,5,5,5,20,20,20,5,20,5,20,5,5,5,10,20,5,5,5,5,5,5,5,20,20,5,5,5,5,5,5,20,10,5,5,10,5,5,5,5,5,20,10,5,5,5,5,5,5,5,10,5,5,5,10,10,5,5,5,5,5,20,10,10,20,20,5,20,10,5,10,5,5,5,5,5,5,20,5,10,5,20,5,5,10,20,5,5,5,20,20,10,5,20,5,10,5,10,5,5,5,5,20,10,20,10,5,5,5,5,10,10,5,5,5,5,5,20,5,10,10,10,20,20,5,5,10,5,5,10,20,5,5,5,5,5,5,20,5,5,5,5,5,5,10,20,5,10,5,20,5,10,5,5,5,5,5,10,10,20,5,10,10,5,5,5,5,5,20,5,5,5,20,5,5,10,5,5,5,5,10,5,10,5,10,5,5,5,10,20,5,20,5,20,5,20,5,5,20,5,20,20,5,10,5,5,10,5,20,20,5,5,10,20,5,5,20,5,5,5,5,5,20,5,5,5,20,10,5,10,5,5,5,5,5,5,5,5,20,5,5,10,5,5,5,5,5,5,5,5,10,20,5,5,5,5,5,5,20,20,10,20,5,5,20,5,20,10,5,5,20,20,5,5,5,5,5,20,5,5,5,5,10,5,5,5,20,5,5,20,5,5,5,5,5,20,5,10,10,5,5,10,5,10,5,5,20,20,5,5,5,5,5,5,5,5,5,20,5,20,5,5,20,5,20,10,10,10,10,5,5,5,5,20,5,20,10,20,5,20,5,5,5,10,5,20,5,10,10,5,5,5,5,5,5,5,5,10,20,10,5,10,5,5,5,20,10,5,20,5,5,5,20,10,5,10,5,5,5,20,20,5,20,5,5,10,5,5,10,5,10,5,5,5,5,20,5,20,20,5,5,5,5,5,5,5,5,5,10,5,10,5,5,20,20,5,5,5,5,5,10,5,10,5,5,5,5,5,5,10,5,5,10,5,20,10,5,5,10,5,5,10,5,5,5,5,20,5,10,5,5,10,5,5,5,5,5,20,20,10,5,5,5,10,20,5,10,5,5,20,5,20,5,5,5,20,5,20,5,5,5,20,10,5,5,5,10,10,20,5,5,5,5,20,5,20,20,20,10,5,5,20,5,20,5,5,10,5,5,10,20,20,5,10,10,5,10,5,5,20,5,5,5,5,5,20,10,5,20,10,5,10,5,5,5,10,20,5,10,5,20,5,5,5,5,5,5,5,20,20,10,10,10,5,5,5,5,5,10,5,5,5,5,5,20,20,5,5,5,20,5,5,10,20,5,10,10,20,10,20,5,20,5,20,5,5,5,5,5,20,5,20,5,5,5,10,5,5,5,10,20,20,5,5,5,5,5,10,5,5,5,10,5,5,20,10,5,5,5,5,5,5,5,5,5,5,5,5,10,10,5,5,5,10,5,5,10,20,5,10,5,20,5,5,20,5,5,5,5,5,5,5,5,20,20,5,20,5,5,20,5,10,20,5,5,20,10,20,20,10,5,5,20,5,20,5,5,5,20,20,5,10,20,5,20,20,10,20,10,5,5,20,10,20,5,20,5,10,5,5,5,5,20,20,20,10,5,5,5,5,20,5,5,10,10,20,5,5,5,5,10,20,5,5,5,5,5,10,20,20,10,10,5,20,20,5,20,5,5,20,5,5,20,5,5,5,10,10,20,5,5,5,5,5,5,5,10,5,20,5,5,5,20,10,5,10,5,10,10,20,20,20,10,10,10,5,10,10,5,5,5,5,5,20,5,10,5,20,5,5,20,5,5,5,20,5,5,20,5,5,10,5,20,10,5,5,10,5,5,10,10,5,20,20,5,5,5,5,20,5,5,5,5,5,5,10,5,5,5,5,10,10,10,5,5,5,10,20,10,5,10,10,5,10,5,5,5,5,10,5,5,5,5,5,5,20,20,5,10,10,20,5,5,5,5,20,10,10,10,5,5,5,5,5,5,5,5,10,5,5,10,10,5,10,5,5,10,10,5,5,20,5,5,20,5,20,10,10,5,20,5,5,5,20,5,10,5,5,5,5,5,5,5,20,10,5,10,20,5,5,5,20,5,5,20,5,10,5,5,10,5,5,20,5,5,5,20,10,5,10,5,5,5,20,20,5,10,20,10,5,10,20,5,5,5,5,20,5,10,20,5,10,5,10,5,20,5,5,10,5,5,5,10,5,10,5,5,5,5,20,5,5,20,5,5,5,5,5,20,5,5,20,10,5,10,5,10,5,5,5,5,20,20,5,5,10,10,5,5,5,5,10,10,20,20,5,5,20,5,5,5,5,5,10,10,5,5,5,5,20,5,5,5,10,5,20,5,5,5,5,5,5,5,20,5,10,5,5,10,5,5,5,20,5,5,20,5,5,5,5,5,5,5,5,5,5,20,10,20,5,5,5,10,10,5,5,5,5,10,5,5,5,5,20,10,5,5,10,20,5,10,5,20,20,5,10,5,10,5,5,5,20,20,20,5,5,10,5,20,5,5,5,5,5,5,5,5,10,5,5,20,5,5,5,10,5,5,5,5,5,10,5,20,10,10,5,5,5,20,20,10,5,5,5,5,5,5,5,10,10,20,5,10,5,20,5,10,5,5,10,5,20,5,5,5,10,5,20,5,10,5,10,10,20,5,5,5,5,10,10,5,20,10,5,20,5,20,5,5,20,20,10,10,5,5,5,5,5,5,5,5,10,5,5,20,5,5,5,5,20,5,20,5,5,5,5,5,10,20,10,20,10,5,5,5,20,20,5,5,5,5,5,5,5,10,10,20,10,5,10,20,10,5,10,20,5,20,10,5,5,5,5,5,10,5,5,5,5,10,5,5,5,5,10,10,20,5,5,5,5,10,10,5,5,5,5,5,10,10,10,5,20,5,5,5,20,20,10,10,10,5,20,5,20,10,5,10,5,10,10,5,5,5,10,5,5,20,10,5,5,20,5,20,5,20,20,10,5,5,5,20,20,5,10,5,5,5,5,20,5,5,5,5,20,5,20,5,20,5,5,10,5,5,5,5,5,5,20,10,5,5,10,5,5,5,5,5,10,5,5,5,5,10,5,5,5,5,10,5,5,10,5,20,5,10,5,5,5,10,5,5,10,5,5,10,5,20,10,20,10,5,5,20,5,5,5,20,5,20,5,5,5,5,5,20,5,5,20,5,20,20,20,5,5,10,5,5,5,5,10,5,5,5,5,5,10,5,10,5,20,5,10,5,5,20,5,5,5,5,20,10,20,5,10,5,5,5,10,20,10,5,5,5,5,5,20,5,5,5,5,5,5,10,5,5,20,20,10,10,20,5,20,5,20,5,20,5,10,5,5,10,5,5,5,5,10,5,20,5,10,10,10,10,5,5,20,10,20,10,10,5,5,5,5,20,5,10,5,5,20,10,10,5,5,5,5,5,20,20,5,5,10,5,5,10,20,5,10,10,10,5,5,5,20,5,5,5,5,5,5,5,5,5,5,5,5,10,5,5,5,10,10,10,5,5,5,20,20,5,10,10,10,10,20,5,5,10,5,10,5,5,20,5,5,20,5,5,5,5,5,5,10,10,10,20,20,5,10,5,10,10,5,5,5,5,20,5,5,5,5,5,5,10,5,5,10,10,10,10,5,5,5,5,5,5,20,5,5,20,10,5,5,20,5,10,5,5,5,5,5,20,20,5,5,5,5,10,5,20,5,5,5,5,20,5,5,5,5,20,10,20,5,5,10,5,5,5,5,20,5,20,5,5,5,10,5,5,5,10,20,20,20,5,10,20,5,5,20,5,5,10,5,5,5,5,10,5,5,5,10,5,20,20,5,10,20,10,20,5,20,20,5,5,10,5,5,5,5,5,5,5,10,5,5,5,5,5,5,5,5,20,10,5,5,5,5,5,20,5,5,5,10,5,5,10,20,10,10,20,5,20,5,10,5,5,5,20,5,5,5,10,10,10,5,10,5,5,10,5,5,5,10,20,5,5,10,5,5,20,5,20,5,10,10,10,5,10,5,5,5,5,10,20,5,5,20,5,10,5,5,5,10,5,10,5,5,5,20,10,5,20,5,10,20,20,5,5,10,5,20,20,10,5,10,5,10,5,10,20,20,10,5,5,20,5,5,5,5,5,5,5,5,10,20,5,5,20,5,5,5,20,5,5,5,20,5,5,5,5,5,5,20,5,10,10,5,5,20,10,5,5,10,20,5,5,5,5,10,20,5,5,10,5,10,5,20,5,5,10,5,5,10,5,5,10,5,10,10,5,20,5,20,10,20,5,5,5,20,20,10,10,20,10,10,5,5,10,5,10,5,5,5,20,5,10,5,5,20,5,20,20,10,20,5,20,10,5,5,5,20,10,20,5,5,5,5,5,5,20,5,10,5,5,5,5,5,20,5,20,20,5,10,5,5,5,10,5,10,5,5,10,5,10,5,5,5,5,20,5,5,5,10,20,10,5,5,20,5,10,10,5,10,5,5,20,5,5,5,10,10,20,10,5,5,10,5,10,10,20,5,5,20,5,20,20,10,5,5,10,20,5,5,10,5,20,5,5,5,10,20,5,5,5,10,10,5,10,5,5,5,5,5,5,5,20,20,5,5,5,5,20,20,5,10,5,5,5,5,20,5,5,5,10,20,5,5,5,5,20,20,5,20,5,5,20,5,10,5,5,5,20,20,5,10,10,5,5,5,10,5,10,5,5,20,5,20,10,20,5,10,5,5,5,20,5,10,5,5,5,5,5,20,5,5,5,5,5,5,5,5,5,5,20,20,20,10,5,20,5,5,10,5,10,10,20,5,5,5,5,10,20,20,5,5,5,10,5,20,5,10,5,10,20,5,5,5,5,5,5,5,20,10,5,5,5,5,10,5,5,5,20,10,10,5,10,10,5,5,5,5,20,5,5,5,10,10,5,20,5,5,10,5,5,10,5,5,20,5,20,5,5,20,20,20,5,5,5,5,5,20,10,10,20,5,5,10,5,5,20,5,5,5,10,10,5,5,10,10,10,20,10,5,10,5,20,20,5,5,5,10,5,5,10,5,5,5,20,20,5,5,10,10,10,10,5,5,10,20,5,5,20,20,10,20,5,20,10,5,5,5,10,20,5,10,10,10,5,5,5,5,20,5,5,20,5,10,5,5,20,5,5,5,10,5,5,20,5,5,20,20,5,5,5,5,5,5,5,5,20,10,5,5,10,20,10,5,10,5,5,5,10,5,5,5,5,20,10,5,20,5,5,10,5,5,5,5,10,5,10,20,5,5,5,5,20,5,5,5,5,5,5,5,5,20,5,20,5,10,5,5,10,5,5,5,20,5,5,20,5,10,5,5,20,5,5,5,20,5,5,5,10,5,5,20,20,10,10,20,5,5,5,20,5,20,5,5,5,10,5,10,5,20,5,5,5,10,5,5,20,5,5,5,20,5,5,5,20,20,5,10,5,20,5,20,5,10,20,20,20,20,20,10,5,10,5,20,5,5,20,5,20,5,5,5,20,5,20,10,20,20,5,5,5,20,5,10,10,5,10,20,20,5,5,5,5,10,5,5,20,20,20,5,20,20,5,20,10,20,10,10,10,5,5,20,20,5,10,5,5,10,5,20,5,5,5,5,20,5,5,20,5,20,5,20,10,20,20,20,10,5,5,5,5,10,5,5,5,5,5,5,5,5,20,5,10,5,5,5,5,5,5,5,10,10,5,5,20,5,5,20,5,20,5,10,5,5,20,20,5,5,5,5,10,5,5,5,10,10,20,5,5,5,20,10,5,10,5,10,10,5,20,5,10,5,20,5,5,20,20,20,20,5,5,5,10,5,20,5,5,10,5,5,10,5,5,5,5,10,20,5,5,10,5,5,10,5,10,5,10,20,20,5,5,5,5,10,5,20,20,20,5,5,10,20,5,5,5,20,5,20,10,5,5,5,5,5,5,10,5,5,20,20,5,20,5,5,5,5,5,5,5,20,20,10,5,5,5,5,5,5,20,5,5,5,5,20,20,5,5,10,5,5,5,5,10,10,5,5,5,20,5,10,5,5,5,5,10,20,5,10,20,20,5,20,20,5,5,5,20,5,5,10,5,5,5,10,5,20,5,5,10,20,5,10,5,20,5,10,5,10,5,20,5,10,20,5,5,20,5,5,5,10,10,5,5,5,5,5,5,20,5,5,5,20,20,10,20,5,5,5,20,10,5,5,10,20,5,5,20,20,20,5,20,5,5,5,10,5,10,10,5,20,5,10,5,5,20,5,10,5,5,10,5,20,5,10,20,20,10,5,5,5,10,20,10,5,20,5,5,5,20,10,5,5,5,5,5,10,5,20,5,5,5,5,5,20,20,5,5,10,5,5,10,20,5,10,5,5,5,10,5,10,5,20,5,10,5,5,20,5,10,5,5,10,20,20,5,5,5,5,5,10,10,5,20,5,5,5,5,5,5,5,5,20,5,20,10,10,5,20,20,5,5,10,5,20,20,5,5,20,20,20,20,5,20,10,5,5,5,5,5,5,5,20,5,20,5,5,5,5,20,5,5,5,10,20,5,5,5,5,20,5,10,10,5,20,5,5,5,5,5,20,20,20,20,10,5,5,5,5,5,5,5,10,10,5,5,5,5,10,20,5,5,10,20,5,5,5,5,5,10,10,5,20,20,10,5,5,5,20,5,20,20,5,5,20,5,10,5,20,10,20,5,5,5,5,5,5,5,20,20,5,5,10,10,5,5,5,20,5,5,5,20,5,5,10,5,5,10,5,5,5,5,10,5,10,5,5,5,5,5,5,5,10,5,5,5,5,10,10,5,10,5,10,5,10,10,20,10,10,5,5,5,20,20,5,5,5,5,20,5,5,20,5,5,5,20,20,10,10,10,5,20,5,5,5,10,10,20,20,20,5,5,5,5,5,20,5,5,5,5,5,10,10,10,20,5,5,5,20,5,5,5,5,5,20,20,5,10,10,10,20,10,5,5,5,10,5,10,5,10,5,5,10,5,20,10,5,5,5,10,5,10,10,10,20,5,10,5,20,5,5,20,5,5,10,5,5,5,10,5,10,5,5,5,5,5,10,10,5,20,10,5,5,5,5,20,20,20,20,5,5,5,5,5,5,5,20,5,5,20,5,5,10,5,5,5,5,5,5,5,5,5,5,5,5,10,5,5,5,20,5,5,10,5,5,20,5,5,5,20,10,5,5,5,5,5,5,5,5,10,10,5,5,5,5,10,5,5,5,5,5,5,5,20,20,20,5,20,5,5,5,5,5,5,5,5,10,5,5,5,5,5,10,20,5,5,5,5,5,5,5,5,5,5,10,20,5,5,5,5,5,20,10,5,5,5,10,20,5,5,20,5,20,10,5,5,5,5,20,20,5,5,5,10,10,10,5,10,20,5,5,10,10,5,20,5,10,20,5,10,10,5,5,5,5,10,10,10,5,5,10,5,20,20,5,5,5,10,5,20,5,5,20,5,5,5,20,10,5,5,5,5,5,10,20,5,5,20,5,5,5,5,5,20,10,5,20,5,5,5,20,5,5,5,10,10,20,20,20,5,20,5,5,20,10,5,5,5,5,5,5,5,5,10,5,5,5,20,5,20,20,5,5,5,5,5,10,5,5,5,10,5,5,20,20,20,10,20,10,5,20,20,10,5,10,5,20,20,5,20,5,5,5,20,5,5,20,20,5,5,5,5,10,10,5,10,5,10,20,5,5,20,5,10,10,20,5,5,20,10,10,5,10,5,5,20,5,5,10,5,5,20,5,10,5,5,20,5,10,20,5,10,5,5,20,5,20,10,5,5,5,5,5,5,5,5,10,5,5,20,5,5,5,5,20,5,20,5,10,20,20,10,5,10,5,5,10,5,5,10,20,5,5,20,5,5,20,10,20,10,5,20,5,5,20,5,5,20,5,10,5,5,20,5,5,5,5,10,10,5,5,20,5,5,5,20,10,5,5,5,10,10,10,20,5,5,5,20,10,5,5,5,5,10,20,5,5,20,10,10,5,5,5,5,5,5,5,20,10,5,10,5,5,5,20,5,5,10,20,5,20,5,5,20,5,5,20,10,5,5,5,5,5,10,5,10,20,5,10,5,5,20,20,5,20,20,10,10,5,5,10,10,10,5,10,10,20,10,5,5,20,5,5,10,20,20,5,5,5,20,10,10,5,5,5,20,5,5,20,20,10,20,5,10,5,20,10,5,20,5,5,20,5,20,5,5,20,10,5,20,5,5,20,10,5,5,20,5,5,20,5,5,10,10,10,20,5,20,5,5,10,10,20,5,20,5,10,5,5,5,20,5,5,10,5,5,5,5,5,10,5,5,5,5,5,5,5,5,20,5,5,5,5,5,10,5,5,10,10,20,5,20,5,5,10,5,10,20,10,5,5,5,10,5,20,5,20,10,10,10,5,5,5,20,10,20,20,5,10,5,20,5,5,5,5,10,5,5,10,5,5,5,5,5,20,5,5,5,5,5,5,5,5,20,5,5,20,20,5,20,10,5,10,5,5,20,10,20,5,5,5,10,5,5,5,5,20,10,5,5,5,5,5,20,5,20,5,20,10,5,5,20,5,5,5,5,5,5,5,20,5,20,5,5,5,5,10,10,5,10,5,5,10,5,5,5,5,5,10,5,10,10,5,5,10,5,20,10,20,5,10,5,5,5,5,10,5,20,5,20,5,5,20,20,5,20,10,5,20,20,20,10,20,5,5,5,10,10,5,5,5,5,10,5,20,10,10,20,5,5,20,20,5,20,5,5,5,5,5,5,5,5,10,20,5,5,10,20,5,5,10,5,20,5,5,20,10,20,10,5,5,20,5,20,20,20,5,5,20,5,5,10,5,10,10,5,5,5,20,5,5,20,20,5,20,5,5,20,5,5,5,20,10,5,5,20,5,5,5,20,5,5,20,20,5,5,5,5,20,20,5,5,20,5,10,10,20,10,20,20,10,5,10,5,20,20,5,10,5,5,5,5,5,5,10,5,5,10,5,10,10,20,5,20,5,5,10,10,5,5,10,10,5,5,10,10,5,20,10,5,5,5,5,20,20,10,5,5,20,5,5,10,20,5,10,10,20,5,5,5,5,5,5,5,10,5,5,5,10,20,5,5,10,5,10,20,5,20,20,5,5,5,20,10,5,5,5,10,20,5,5,10,5,5,5,20,5,5,5,5,5,5,5,5,5,5,5,5,5,10,10,5,5,10,5,10,5,5,5,10,5,20,5,10,10,5,10,20,10,10,10,5,20,5,20,5,10,5,10,5,10,5,20,20,5,20,5,5,10,5,5,10,5,20,10,20,5,10,5,10,5,10,5,10,5,5,20,5,5,10,5,5,5,5,20,10,10,20,5,20,10,5,5,20,5,5,5,10,5,5,5,5,20,5,20,10,10,5,5,5,5,10,10,5,5,5,20,20,20,5,20,10,20,5,5,5,5,5,10,5,5,5,5,5,5,5,5,5,10,5,5,5,5,5,5,10,10,5,5,10,20,5,5,10,10,20,5,5,10,5,5,20,10,5,5,20,5,5,5,5,20,5,5,10,5,10,5,5,5,5,5,5,5,5,5,10,10,20,10,20,5,20,5,10,20,20,20,10,20,5,5,5,5,10,5,5,20,10,10,20,5,10,5,20,10,5,5,5,5,5,5,10,5,5,20,10,5,5,5,5,20,5,10,5,5,5,5,20,20,5,5,10,5,20,20,5,5,10,5,5,5,20,5,5,5,10,5,5,5,20,5,20,10,5,5,10,10,5,20,10,10,20,5,5,5,5,10,5,5,5,5,5,10,10,5,10,20,5,10,20,5,10,5,20,5,5,5,5,5,5,10,20,20,5,20,5,5,5,5,5,5,5,5,5,5,10,5,5,10,5,5,5,20,5,5,5,10,20,5,20,20,10,20,5,5,5,20,10,5,5,20,20,5,10,5,5,20,5,5,5,20,5,5,5,5,5,20,5,10,5,5,10,5,5,5,20,20,5,10,5,20,5,5,20,10,20,5,5,5,10,10,5,5,20,5,5,5,10,10,5,5,5,5,5,5,5,10,10,5,20,5,5,5,20,5,5,5,10,20,10,5,5,10,20,20,10,10,10,5,5,20,5,20,5,5,10,10,20,5,5,10,10,5,20,20,20,20,10,5,5,5,5,10,5,5,5,5,5,5,20,10,10,5,5,5,5,5,10,5,5,20,5,10,20,10,5,10,10,10,5,20,5,5,5,5,20,10,5,5,5,10,5,5,20,5,5,10,5,5,5,5,10,5,5,20,5,5,20,20,20,20,5,5,5,5,20,5,5,5,5,20,5,5,20,5,5,5,10,5,20,10,5,5,5,5,10,20,20,5,10,20,5,5,5,5,10,5,5,5,20,20,5,5,20,5,5,5,5,10,5,10,5,5,5,20,5,5,5,10,5,10,20,5,10,20,20,10,10,5,5,10,5,5,5,5,5,5,5,5,5,5,10,5,20,10,10,5,5,5,5,5,5,5,10,5,10,10,5,5,5,5,20,20,20,20,5,5,5,5,5,5,20,20,20,20,5,20,10,5,20,10,5,5,5,5,5,5,20,10,20,5,5,5,20,5,5,20,20,20,5,20,5,10,5,5,5,10,5,20,5,5,5,5,20,20,20,5,5,20,5,5,20,10,10,5,10,5,20,5,10,5,5,5,20,5,10,20,20,10,5,5,5,20,5,5,10,5,5,5,5,20,20,5,10,5,20,20,5,5,5,5,5,10,5,5,5,20,5,5,5,5,5,10,5,5,5,5,5,5,5,5,5,5,20,5,5,10,5,5,5,5,20,10,5,20,20,20,5,5,5,5,5,20,10,10,20,10,20,10,5,20,20,5,20,5,5,10,10,10,5,5,5,20,5,5,5,20,5,5,5,20,5,20,5,5,5,5,5,5,10,5,5,5,10,20,5,5,5,5,5,20,10,5,5,20,20,5,5,10,5,5,10,10,5,10,5,5,5,5,5,5,20,5,5,5,20,5,5,5,5,5,5,5,5,10,5,5,20,5,5,10,5,5,5,5,5,10,5,10,5,10,5,5,10,20,5,5,20,5,20,20,5,5,5,5,5,5,20,5,20,20,20,5,5,5,20,5,20,5,10,5,5,5,10,5,5,20,20,5,20,10,5,5,5,10,5,20,10,5,10,20,20,5,10,5,20,20,5,5,5,5,10,5,5,20,5,5,5,5,5,5,5,20,5,10,5,10,5,5,10,20,10,20,20,5,5,5,20,20,10,20,5,20,20,5,10,10,5,20,20,5,5,5,5,5,5,20,5,5,10,5,5,5,5,5,5,10,20,10,5,20,10,5,5,5,5,5,20,20,20,20,5,5,20,5,5,5,5,20,5,10,10,10,5,10,10,5,10,5,10,5,5,5,5,5,10,20,5,5,5,5,5,10,5,5,5,20,10,20,5,10,5,5,5,5,5,5,5,5,10,20,5,20,5,10,20,10,5,20,5,5,5,20,5,5,5,10,5,5,5,5,10,10,5,20,5,10,5,20,5,10,5,10,5,10,5,10,5,5,5,5,10,10,5,5,20,5,10,5,5,5,20,5,20,5,20,10,5,5,20,10,10,20,10,5,5,5,5,5,5,5,10,5,5,5,10,10,5,5,20,20,5,5,5,5,5,5,5,20,5,5,10,20,10,20,5,5,5,5,10,5,10,5,10,5,10,5,5,5,5,5,10,5,20,20,10,20,10,10,10,20,5,10,20,5,10,5,5,5,5,5,5,10,5,5,5,5,5,10,5,5,5,10,5,5,5,10,5,10,20,5,5,10,5,10,5,5,5,5,5,5,10,10,10,10,10,5,20,10,5,5,20,10,5,5,20,5,5,10,5,5,5,5,5,10,5,5,5,20,20,10,5,5,5,5,10,5,5,5,5,10,20,5,5,10,5,5,20,5,20,20,20,20,5,5,20,20,5,5,5,20,5,5,5,10,5,5,10,5,10,20,20,5,5,10,10,5,5,5,10,10,5,10,20,5,10,20,20,5]
        
        XCTAssertTrue(LemonadeChange().lemonadeChange(bills))
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
