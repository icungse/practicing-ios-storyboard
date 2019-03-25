//
//  PlayerViewController.swift
//  Rating
//
//  Created by icungse on 25/03/19.
//  Copyright © 2019 icung. All rights reserved.
//

import UIKit

class PlayerViewController: UITableViewController {
    
    //MARK: Properties
    var players = SampleData.generatePlayersData()
    
}

//MARK: IBAction
extension PlayerViewController {
    @IBAction func cancelToPlayersViewController(_ segue: UIStoryboardSegue) {
        
    }
    
    @IBAction func savePlayerDetail(_ segue: UIStoryboardSegue) {
        guard let playerDetailsViewController = segue.source as? PlayerDetailsViewController,
            let player = playerDetailsViewController.player else {
            return
        }
        
        // add the new player to the players array
        players.append(player)
        
    }
}

// MARK: UITableViewDataSource

extension PlayerViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell", for: indexPath) as! PlayerCell
        
        let player = players[indexPath.row]
        cell.player = player
        return cell
        
    }
}
