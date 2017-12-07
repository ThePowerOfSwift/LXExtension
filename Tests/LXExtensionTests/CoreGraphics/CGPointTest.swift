//
//  CGPointTest.swift
//  LXExtensionTests
//
//  Created by Minh Luan Tran on 12/8/17.
//

import XCTest
@testable import LXExtension

class CGPointTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPlusTwoPoint() {
        let a = CGPoint(x: 5, y: 4)
        let b = CGPoint(x: -2, y: 2)
        let c = a + b
        
        XCTAssertTrue(c.x == 3)
        XCTAssertTrue(c.y == 6)
    }
    
    func testMultiPointWithNumber() {
        let a = CGPoint(x: 3, y: 2)
        let b = a * 2
        
        XCTAssertTrue(b.x == 6)
        XCTAssertTrue(b.y == 4)
    }
    
    func testDividePointWithNumber() {
        let a = CGPoint(x: 4, y: 10)
        let b = a / 2
        
        XCTAssertTrue(b == CGPoint(x: 2, y: 5))
    }
}
