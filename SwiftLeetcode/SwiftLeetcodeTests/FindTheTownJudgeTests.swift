//
//  FindTheTownJudgeTests.swift
//  SwiftLeetcodeTests
//
//  Created by Varun Jandhyala on 2/28/19.
//  Copyright © 2019 varun. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class FindTheTownJudgeTests: XCTestCase {

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
    
    func testJudgeExists() {
        XCTAssertEqual(3, FindTheTownJudge().findJudge(3, [[1, 3], [2,3]]))
    }
    
    func testNoJudge() {
                XCTAssertEqual(-1, FindTheTownJudge().findJudge(3, [[1,3],[2,3],[3,1]]))
    }
    
    func testBigTown() {
        XCTAssertEqual(3, FindTheTownJudge().findJudge(4, [[1,3],[1,4],[2,3],[2,4],[4,3]]))
    }

    func testLargerTown() {
        XCTAssertEqual(3, FindTheTownJudge().findJudge(4, [[1,2],[1,3],[2,1],[2,3],[1,4],[4,3],[4,1]]))
    }
}
