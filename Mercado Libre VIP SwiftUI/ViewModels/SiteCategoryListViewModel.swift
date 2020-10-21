//
//  SiteCategoryListViewModel.swift
//  Mercado Libre VIP SwiftUI
//
//  Created by Lucio Murature on 20/10/2020.
//  Copyright © 2020 Lucio Murature. All rights reserved.
//

import Foundation
import Combine

class SiteCategoryListViewModel: ObservableObject {
    
    let objectWillChange = ObservableObjectPublisher()
    
    init(siteId: String) {
        fetchCategories(siteId: siteId)
    }
    
    var categories = [SiteCategoryViewModel]() {
        willSet {
            objectWillChange.send()
        }
    }
    
    private func fetchCategories(siteId: String) {
        
        guard let url = URL(string: ("https://api.mercadolibre.com/sites/" + siteId)) else {
            fatalError("URL is not correct!")
        }
        
        SiteService().getSiteCategories(url: url) { siteResponse in
            self.categories = siteResponse.SiteCategories.map(SiteCategoryViewModel.init)
        }
        
    }
    
    
}
