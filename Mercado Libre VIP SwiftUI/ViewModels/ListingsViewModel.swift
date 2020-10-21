//
//  ListingsViewModel.swift
//  Mercado Libre VIP SwiftUI
//
//  Created by Lucio Murature on 20/10/2020.
//  Copyright © 2020 Lucio Murature. All rights reserved.
//

import Foundation

class ListingsViewModel: Identifiable {
    
    let id = UUID()
    
    let listingSearch: ListingSearch
    
    init(listingSearch: ListingSearch) {
        self.listingSearch = listingSearch
    }
    
    /*var results: [ListingResult] {
        return self.results
    }*/
    
}
