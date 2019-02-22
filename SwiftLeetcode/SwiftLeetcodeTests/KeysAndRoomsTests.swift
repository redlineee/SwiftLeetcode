//
//  KeysAndRoomsTests.swift
//  SwiftLeetcodeTests
//
//  Created by Varun Jandhyala on 8/26/18.
//  Copyright © 2018 varun. All rights reserved.
//

import XCTest
@testable import SwiftLeetcode

class KeysAndRoomsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testOne() {
        let rooms = [[1], [2], [3], []]
        
        XCTAssertTrue(KeysAndRooms().canVisitAllRooms(rooms))
    }
    
    func testTwo() {
        let rooms = [[1,3],[3,0,1],[2],[0]]
        
        XCTAssertFalse(KeysAndRooms().canVisitAllRooms(rooms))
    }
    
    func testThree() {
        let rooms = [[2],[],[1]]
        
        XCTAssertTrue(KeysAndRooms().canVisitAllRooms(rooms))
    }
    
    func testFour() {
        let rooms = [[7,16,8,16,19,8],[10],[9,11],[3,14,16,19],[8,10,19,1,7],[13,5,10,15,4],[6,13],[14,14,11,12,18],[3],[17,9],[1,2,6,9,6],[12,12,2],[4,4],[2,13,17],[17],[],[11,15],[3,5],[15,18,5],[7,18,1]]
        
        XCTAssertTrue(KeysAndRooms().canVisitAllRooms(rooms))
    }
    
    func testFive() {
        let rooms = [[10,35,25,33],[],[47,27],[23,3,28,39],[36,41,10,24],[14,40,42,44],[41,35],[48],[24,26,44,23,11,17],[1,17,20,30],[],[38,39,44],[],[11,21,45,13],[1,27,14,19],[23],[30,21,8,22,40],[14,48],[32,6],[5,15,26,34,38],[43,25],[18,10,33],[15,34,9,9],[18,46,48,7,13],[5,29,4],[42,34],[7,13,37,8,15,21],[4,5],[38,20,42],[16,19,47],[8,29],[28,33,37,49],[9,39,49,41],[31,12,26,32],[2,40,32,46],[27,22],[12,37,2],[31,1],[46,19,16,18,30],[35],[6,3,7,28,43],[4,25,2,29],[],[22,24,45,12],[36,31],[3,36,45],[20,43,49],[11],[16,6],[17,47]]
        
        XCTAssertTrue(KeysAndRooms().canVisitAllRooms(rooms))
    }
    
    func testSix() {
        let rooms = [[13],[15,29,15,22],[5,18,9],[7],[27],[27],[6,28],[26],[34],[1,44,11],[8,36],[17,35],[11,45,46,10,49],[19,38,47,39],[20,30],[34],[32,31],[25,19,21,29],[36],[],[38],[2,13,17,47],[12],[49,46],[],[40],[],[39,16,24],[24,41],[14,3,40],[14,43],[],[3,20,23],[37,48],[6,10],[26,1,4],[],[41,45],[23,33],[],[22,18,37],[4,33,43],[28,31,42],[30,48],[16,35],[5,8,44],[2,25],[9,21,42],[7,12,32],[]]
        
        XCTAssertTrue(KeysAndRooms().canVisitAllRooms(rooms))
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
