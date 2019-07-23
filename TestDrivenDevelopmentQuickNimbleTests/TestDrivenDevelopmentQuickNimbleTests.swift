//
//  TestDrivenDevelopmentQuickNimbleTests.swift
//  TestDrivenDevelopmentQuickNimbleTests
//
//  Created by Mo'men Abd Elmageed on 7/23/19.
//  Copyright © 2019 TruDoc. All rights reserved.
//

import XCTest
import Quick
import Nimble
@testable import TestDrivenDevelopmentQuickNimble

class TestDrivenDevelopmentQuickNimbleTests: QuickSpec {

  override func spec() {
    
    describe("Testing viewcontroller") {
      
      var viewController:EmployeeViewController!
      beforeEach {
        viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "EmployeeViewControllerVCID") as? EmployeeViewController
        _ = viewController.view
      }
      
      context("Helper methods") {
        it("callculating square area") {
          let area = viewController.area(width: 4, height: 4)
          expect(area).to(equal(16))
        }
      }
      
      
      context("Employees table view") {
        it("test number of cells on first section" , closure: {
          let numberOfCells = viewController.tableView(viewController.tableViewEmployees, numberOfRowsInSection: 0)
          expect(numberOfCells).to(equal(7))
        })
      }
      
      context("Employees table view", {
        var cell:UITableViewCell!
        beforeEach {
          cell = viewController.tableView(viewController.tableViewEmployees, cellForRowAt: IndexPath(row: 0, section: 0))
        }
        it("test cell 0 title", closure: {
          expect(cell.textLabel?.text).to(equal("Moamen"))
          expect(cell.detailTextLabel?.text).to(equal("xCode"))
        })
      })
      
      
      context("Employees table view", {
        it("test table backGround Color", closure: {
          let tableBackGroundColor = viewController.tableViewEmployees.backgroundColor
          expect(tableBackGroundColor).to(equal(.clear))
        })
      })
      
    }
  }
  
  
}
