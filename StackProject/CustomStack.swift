//
//  CustomStack.swift
//  StackProject
//
//  Created by Kingsley Enoka on 11/2/20.
//

import Foundation

//class CustomStack <Element> {
//
//  private var stack: [Element] = []
//
//  func pushElement(element: Element) {
//    stack.append(element)
//  }
//
//  func popElement() {
//    if !stack.isEmpty {
//      let last = stack.count - 1
//      stack.remove(at: last)
//    }
//  }
//
//  func currentElement() -> Element? {
//    if !stack.isEmpty {
//      let last = stack.count - 1
//      return stack[last]
//    } else {
//      return nil
//    }
//  }
//
//}

struct CustomStack<Element>: StackProtocol {
  
  //typealias Element = Int
  
  var stack: [Element] = []
  
  mutating func push(element: Element) {
    stack.append(element)
  }
  
  mutating func pop() {
    if !stack.isEmpty {
      let last = stack.count - 1
      stack.remove(at: last)
    }
  }
  
  mutating func currentElement() -> Element? {
    if stack.isEmpty {
      return nil
    } else {
      let last = stack.count - 1
      return stack[last]
    }
  }
  
}

protocol StackProtocol {
  associatedtype Element
  
  var stack: [Element] {get set}
  
  mutating func push(element: Element)
  mutating func pop()
  mutating func currentElement() -> Element?
}


