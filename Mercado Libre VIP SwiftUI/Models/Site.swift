//
//  site.swift
//  Mercado Libre VIP SwiftUI
//
//  Created by Lucio Murature on 19/10/2020.
//  Copyright © 2020 Lucio Murature. All rights reserved.
//

import Foundation

struct Site: Codable {
    var SiteId: String
    var Name: String
    var DefaultCurrencyId: String
    var SiteCategories: [Category]
    
    enum CodingKeys: String, CodingKey {
        case SiteId = "id"
        case Name = "name"
        case DefaultCurrencyId = "default_currency_id"
        case SiteCategories = "categories"
    }
}

struct Category: Codable {
    var CategoryId: String
    var Name: String
    
    enum CodingKeys: String, CodingKey {
        case CategoryId = "id"
        case Name = "name"
    }
}
