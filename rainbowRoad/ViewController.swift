//
//  ViewController.swift
//  rainbowRoad
//
//  Created by Erick Lui on 7/6/17.
//  Copyright © 2017 Erick Lui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  let colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
  
  @IBOutlet weak var tableView: UITableView!
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.dataSource = self
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}

extension ViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return colors.count
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
    cell.backgroundColor = colors[indexPath.row]
    return cell
  }
}
