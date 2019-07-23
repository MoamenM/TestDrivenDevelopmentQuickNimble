//
//  Employee.swift
//  TestDrivenDevelopmentQuickNimble
//
//  Created by Mo'men Abd Elmageed on 7/23/19.
//  Copyright © 2019 TruDoc. All rights reserved.
//

import UIKit

enum Position {
  case iOS_Developer
  case Android_Developer
  case BE_Developer
}

struct Employee {
  
  var name: String
  var position:Position
  
  init(name:String, position:Position) {
    self.name = name
    self.position = position
  }
  
  func detectTool () -> String {
    switch self.position {
    case .iOS_Developer:
      return "xCode"
    case .Android_Developer:
      return "Android studio"
    case .BE_Developer:
      return "visual studio"
    }
  }
  
}
