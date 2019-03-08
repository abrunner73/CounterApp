//
//  Counter.swift
//  CounterApp
//
//  Created by Froedtert Developer on 11/19/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

import UIKit
import Foundation

@objc(Counter)
class Counter: NSObject {

  private var count = 0

  @objc
  func increment () {
    count += 1
    print("Count is \(count)")
  }

  @objc
  func constantsToExport() -> [AnyHashable : Any]! {
    return ["initialCount": 0]
  }
  
  static func requiresMainQueueSetup() -> Bool {
    return true
  }
}
