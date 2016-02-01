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
    
    let referer = WeakReferer()
    let refererDump = dumperFunc(referer)
    
    do {
      let target = NSObject()
      referer.target = target
      print(target)
      print(refererDump())
    }
    print(refererDump())
  }
}
