//
//  StackProjectTests.swift
//  StackProjectTests
//
//  Created by Kingsley Enoka on 11/2/20.
//

import XCTest
@testable import StackProject

class StackProjectTests: XCTestCase {
  
  var sut: CustomStack<Int>!
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    sut = CustomStack()
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    sut = nil
  }
  
  func testCurrentElementWhenStackIsEmpty() {
    let currentElement = sut.currentElement()
    XCTAssertEqual(currentElement, nil)
  }
  
  func testPushElement() {
    sut.push(element: 9)
    let currentElement = sut.currentElement()
    XCTAssertEqual(currentElement, 9)
  }
  
  
  func testPopElement() {
    sut.push(element: 4)
    sut.push(element: 7)
    sut.pop()
    let currentElement = sut.currentElement()
    XCTAssertEqual(currentElement, 4)
  }
}
