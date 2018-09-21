//
//  IntermediaryModels.swift
//  Restaurant
//
//  Created by Ernesto Daniel Mejia Valdiviezo on 20/09/18.
//  Copyright © 2018 Ernesto Daniel Mejia Valdiviezo. All rights reserved.
//

import Foundation

struct Categories: Codable {
    let categories: [String]
}

struct PreparationTime: Codable {
    let prepTime: Int
    
    enum CodingKeys: String, CodingKey {
        case prepTime = "preparation_time"
    }
}
