//
//  WildcardMatchingTests.swift
//  SwiftLeetcodeTests
//
//  Created by Varun Jandhyala on 7/31/18.
//  Copyright © 2018 varun. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class WildcardMatchingTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
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
    
    func test_1_Basic_1() {
        let str = "inn"
        let pat = "i?x"
        
        XCTAssert(WildcardMatching().isMatch(str, pat) == false)
    }
    
    func test_1_1_Basic_1() {
        let str = "inn"
        let pat = "i?xyz"

        XCTAssert(WildcardMatching().isMatch(str, pat) == false)
    }
    
    func test_1_2_Basic_2() {
        let str = "a"
        let pat = "aa"
        
        XCTAssert(WildcardMatching().isMatch(str, pat) == false)
    }
    
    func test_1_3_Basic_3() {
        let str = "aa"
        let pat = "a"
        
        XCTAssert(WildcardMatching().isMatch(str, pat) == false)
    }

    func test_2_Basic_2() {
        let str = "cat"
        let pat = "c?t"

        XCTAssert(WildcardMatching().isMatch(str, pat) == true)
    }

    func test_3_Star_1() {
        let str = "catcher"
        let pat = "c*t*er"

        XCTAssert(WildcardMatching().isMatch(str, pat) == true)
    }

    func test_4_Star_2() {
        let str = "catcher"
        let pat = "c*pt*r"

        XCTAssert(WildcardMatching().isMatch(str, pat) == false)
    }

    func test_5_Star_3() {
        let str = "adceb"
        let pat = "*a*b"

        XCTAssert(WildcardMatching().isMatch(str, pat) == true)
    }


    func test_6_Star_4() {
        let str = "acdcb"
        let pat = "a*c?b"

        XCTAssert(WildcardMatching().isMatch(str, pat) == false)
    }

    func test_7_Star_5() {
        let str = "afgr"
        let pat = "a**r"

        XCTAssert(WildcardMatching().isMatch(str, pat) == true)
    }

    func test_8_Star_6() {
        let str = "afgr"
        let pat = "a**"

        XCTAssert(WildcardMatching().isMatch(str, pat) == true)
    }
    
    func test_9_MASSIVE_1() {
        let str = "abefcdgiescdfimde"
        let pat = "ab*cd?i*de"
                
        XCTAssert(WildcardMatching().isMatch(str, pat) == true)
    }
    
    func test_10_MASSIVE_2() {
        let str = "bac"
        let pat = "*a*"
        
        XCTAssert(WildcardMatching().isMatch(str, pat) == true)

    }
}
