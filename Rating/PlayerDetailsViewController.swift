//
//  PlayerDetailsViewController.swift
//  Rating
//
//  Created by icungse on 26/03/19.
//  Copyright © 2019 icung. All rights reserved.
//

import UIKit

class PlayerDetailsViewController: UITableViewController {

    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var detailLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
}

// MARK: UITableViewDelegate
extension PlayerDetailsViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            nameTextField.becomeFirstResponder()
        }
    }
}
