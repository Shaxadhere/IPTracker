//
//  ViewController.swift
//  IPTracker
//
//  Created by Shehzad on 17/09/2020.
//  Copyright © 2020 Shehzad. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var textfieldIPAddress: UITextField!
    @IBOutlet weak var labelIPAddress: UILabel!
    @IBOutlet weak var tableViewDetails: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tableViewDetails.delegate = self
        self.tableViewDetails.dataSource = self
    }
    
    let vegetables = ["Carrot", "Broccoli", "Cucumber"]
    
    func tableView(_ tableViewDetails: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Ask for a cell of the appropriate type.
        let cell = tableViewDetails.dequeueReusableCell(withIdentifier: "basicStyleCell", for: indexPath) as! TableViewCell
        cell.titleLabel.text = vegetables[indexPath.row]
        cell.detailLabel.text = "Detail"
             
        return cell
    }
    
    func tableView(_ tableViewDetails: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return vegetables.count
    }

}

