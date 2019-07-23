//
//  ViewController.swift
//  TestDrivenDevelopmentQuickNimble
//
//  Created by Mo'men Abd Elmageed on 7/23/19.
//  Copyright © 2019 TruDoc. All rights reserved.
//

import UIKit

class EmployeeViewController: UIViewController {

  // MARK:- Outlets
  @IBOutlet weak var tableViewEmployees: UITableView!
  
  // MARK:- Parameters
  var employees:[Employee]!
  
  // MARK:- View lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.employees = [Employee(name: "Moamen", position: .iOS_Developer),
                 Employee(name: "Yiehya", position: .Android_Developer),
                 Employee(name: "Morshedy", position: .BE_Developer),
                 Employee(name: "Saied", position: .BE_Developer),
                 Employee(name: "Samir", position: .Android_Developer),
                 Employee(name: "Nassar", position: .BE_Developer),
                 Employee(name: "Bassem", position: .iOS_Developer)]
  }
  
  // MARK:- Helper methods
  func area(width:Double , height:Double) -> Double {
    return width * height
  }
  
}

// MARK:- UITableViewDataSource
extension EmployeeViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.employees.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "EmployeeCell")
    
    let employee = self.employees[indexPath.row]
    cell?.textLabel?.text = employee.name
    cell?.detailTextLabel?.text = employee.detectTool()
    
    return cell!
  }

}



