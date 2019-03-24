//
//  SampleData.swift
//  Rating
//
//  Created by icungse on 25/03/19.
//  Copyright © 2019 icung. All rights reserved.
//

import Foundation

final class SampleData {
    
    static func generatePlayersData() -> [Player] {
        return [
            Player(name: "Icung", game: "Gundu", rating: 4),
            Player(name: "Bambang", game: "Patil Lele", rating: 5),
            Player(name: "Parjo", game: "Bekel", rating: 2)
        ]
    }
}
