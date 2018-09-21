//
//  MenuItem.swift
//  Restaurant
//
//  Created by Ernesto Daniel Mejia Valdiviezo on 20/09/18.
//  Copyright © 2018 Ernesto Daniel Mejia Valdiviezo. All rights reserved.
//

import Foundation

struct MenuItem: Codable {
    var id: Int
    var name: String
    var description: String
    var price: Double
    var category: String
    var imageURL: URL
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case description
        case price
        case category
        case imageURL = "image_url"
    }
}

struct  MenuItems: Codable {
    let items: [MenuItem]
}

