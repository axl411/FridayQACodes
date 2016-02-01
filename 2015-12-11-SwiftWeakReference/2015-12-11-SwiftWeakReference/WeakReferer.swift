//
//  WeakReferer.swift
//  Test
//
//  Created by 顾超 on Feb/1/16.
//  Copyright © 2016 顾超. All rights reserved.
//

import UIKit

func contents(ptr: UnsafePointer<Void>, _ length: Int) -> String {
  let wordPtr = UnsafePointer<UInt>(ptr)
  let words = length / sizeof(UInt.self)
  let wordChars = sizeof(UInt.self) * 2
  
  let buffer = UnsafeBufferPointer<UInt>(start: wordPtr, count: words)
  let wordStrings = buffer.map { word -> String in
    var wordString = String(word, radix: 16)
    while wordString.characters.count < wordChars {
      wordString = "0" + wordString
    }
    return wordString
  }
  return wordStrings.joinWithSeparator(" ")
}

func dumperFunc(obj: AnyObject) -> (Void -> String) {
  let objString = String(obj)
  let ptr = unsafeBitCast(obj, UnsafePointer<Void>.self)
  let length = class_getInstanceSize(obj.dynamicType)
  return {
    let bytes = contents(ptr, length)
    return "\(objString) \(ptr): \(bytes)"
  }
}

class WeakReferer {
  var dummy1 = 0x1234321012343210
  weak var target: AnyObject?
  var dummy2: UInt = 0xabcdefabcdefabcd
}

class WeakTarget {}
