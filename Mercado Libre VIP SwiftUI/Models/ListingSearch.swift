//
//  ListingSearch.swift
//  Mercado Libre VIP SwiftUI
//
//  Created by Lucio Murature on 19/10/2020.
//  Copyright © 2020 Lucio Murature. All rights reserved.
//

import Foundation


struct ListingSearch: Codable {
    var SiteId: String
    var Results: [ListingResult]
    
    enum CodingKeys: String, CodingKey {
        case SiteId = "site_id"
        case Results = "results"
    }
}

struct ListingResult: Codable {
    var ItemId: String
    var Title: String
    var Price: Float32
    var Thumbnail: String
    
    enum CodingKeys: String, CodingKey {
        case ItemId = "id"
        case Title = "title"
        case Price = "price"
        case Thumbnail = "thumbnail"
    }
}
