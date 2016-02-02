//
//  ViewController.swift
//  2015-12-11-SwiftWeakReference
//
//  Created by 顾超 on Feb/2/16.
//  Copyright © 2016 顾超. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let target = WeakTarget()
    let targetDump = dumperFunc(target)
    do {
      print(targetDump())
      weak var a = target
      print(targetDump())
      weak var b = target
      print(targetDump())
      weak var c = target
      print(targetDump())
      weak var d = target
      print(targetDump())
      weak var e = target
      print(targetDump())
      var f = target
      print(targetDump())
      var g = target
      print(targetDump())
      var h = target
      print(targetDump())
      var i = target
      print(targetDump())
      var j = target
      print(targetDump())
      var k = target
      print(targetDump())
    }
  }
  
}

