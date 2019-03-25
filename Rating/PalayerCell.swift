//
//  PalayerCell.swift
//  Rating
//
//  Created by icungse on 26/03/19.
//  Copyright © 2019 icung. All rights reserved.
//

import UIKit

class PalayerCell: UITableViewController {
    
    // MARK: IBOutlets
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var gameLabel: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!
    
    // MARK: Properties
    var player: Player? {
        didSet {
            guard let player = player else {
                return
            }
            gameLabel.text = player.game
            nameLabel.text = player.name
            ratingImageView.image = image(forRating: player.rating)
        }
    }
    
    func image(forRating rating: Int) -> UIImage? {
        let imageName = "\(rating)Stars"
        return UIImage(named: imageName)
    }
    
    
}
