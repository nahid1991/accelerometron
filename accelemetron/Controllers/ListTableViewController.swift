//
//  ListTableTableViewController.swift
//  accelemetron
//
//  Created by Nahid on 6/9/19.
//  Copyright © 2019 Nahid. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return DataService().getCategories().count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "parallaxCell", for: indexPath) as? ParallaxCell {
            let data = DataService().getCategories()
            
            cell.configureCell(withImage: data[indexPath.row].image, andDescription: data[indexPath.row].label)
            
            return cell
        } else {
            return UITableViewCell()
        }
    }

}
